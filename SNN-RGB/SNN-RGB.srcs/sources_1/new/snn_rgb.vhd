library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity snn_rgb is
    port(clk        : in  std_logic;                      -- input clock 74.25 MHz, video 720p
        reset_n     : in  std_logic;                      -- reset (invoked during configuration)
        enable_in : in  std_logic_vector(2 downto 0);     -- three slide switches
        -- video in
        vs_in       : in  std_logic;                      -- vertical sync
        hs_in       : in  std_logic;                      -- horizontal sync
        de_in       : in  std_logic;                      -- data enable is '1' for valid pixel
        r_in        : in  std_logic_vector(7 downto 0);   -- red component of pixel
        g_in        : in  std_logic_vector(7 downto 0);   -- green component of pixel
        b_in        : in  std_logic_vector(7 downto 0);   -- blue component of pixel
        -- video out
        vs_out      : out std_logic;                      -- corresponding to video-in
        hs_out      : out std_logic;
        de_out      : out std_logic;
        r_out       : out std_logic_vector(7 downto 0);
        g_out       : out std_logic_vector(7 downto 0);
        b_out       : out std_logic_vector(7 downto 0);
        --
        clk_o     : out std_logic;                      -- output clock (do not modify)
        led       : out std_logic_vector(2 downto 0));  -- not supported by remote lab
end snn_rgb;


architecture behave of snn_rgb is

    -- input FFs
    signal reset                        : std_logic;
    signal vs_0, hs_0, de_0             : std_logic;
    signal r_0, g_0, b_0                : integer range 0 to 255;
    signal vs_q, de_q                   : std_logic;
    
    -- output of signal processing
    signal vs_1, hs_1, de_1             : std_logic;
    signal r_out_1, g_out_1, b_out_1    : std_logic;     -- output signal for rgb channels	

    -- spike signals
    signal h_0, h_1, h_2, h_3, h_4, h_5, h_6, out_0, out_1 : std_logic;     -- spike Signals of the neurons
    signal r_sp, g_sp, b_sp             : std_logic;                        -- input spike signals

    --reset of neurons
    signal neuron_reset                 : std_logic := '1';                 -- initial reset signal
    signal frame_reset                  : std_logic := '1';                 -- initial reset signal
    signal res_ly_1                     : std_logic;                        -- reset layer 1
    signal res_ly_2                     : std_logic;                        -- reset layer 2

    -- counting signals for steps and spikes
    signal step                         : integer range 1 to 256;           -- counter for evaluation steps
    signal num_out0_sp, num_out1_sp     : integer range 0 to 255;           -- number of output spikes for output neurons


    -- constants
    constant sp_steps                   : integer := 64;                    -- number of timesteps a pixel will be evaluated for

    constant v_th                       : integer := 256;                   -- voltage threshold
    constant n_sp_to_activate           : integer := 23;                    -- necessary number of output spikes to classify
    constant ltc_delay                  : integer := 11;                    -- latency delay
    constant total_delay                : integer := sp_steps + ltc_delay;  -- delay overall


begin

-- delay signals
control: entity work.control
        generic map(delay           => total_delay,
                    layer_delay     => 5)
        port map(   clk             => clk,
                    reset           => reset,
                    neuron_reset    => neuron_reset,
                    vs_in           => vs_0,
                    hs_in           => hs_0,
                    de_in           => de_0,
                    res_ly_1        => res_ly_1,
                    res_ly_2        => res_ly_2,
                    vs_out          => vs_1,
                    hs_out          => hs_1,
                    de_out          => de_1);


-- generate input spikes based on rgb values
pseudo_random: entity work.gen_input
        port map(   clk             => clk,
                    reset           => frame_reset,
                    r_st            => r_0,
                    g_st            => g_0,
                    b_st            => b_0,
                    r_sp            => r_sp,
                    g_sp            => g_sp,
                    b_sp            => b_sp);

-- neurons
hidden0: entity work.neuron
        generic map(w_0             => -1,
                    w_1             => 10,
                    w_2             => 103,
                    bias            => -79,
                    v_th            => v_th)
        port map(   clk             => clk,
                    reset           => reset,
                    sp_0            => r_sp,
                    sp_1            => g_sp,
                    sp_2            => b_sp,
                    neuron_reset    => res_ly_1,
                    spike_out       => h_0);

hidden1: entity work.neuron 
        generic map(w_0				=> -74,
                    w_1				=> -75,
                    w_2				=> -131,
                    bias 			=> 27,
                    v_th 			=> v_th)
        port map(   clk      		=> clk,
                    reset			=> reset,
                    sp_0			=> r_sp,
                    sp_1			=> g_sp,
                    sp_2	 		=> b_sp,
                    neuron_reset	=> res_ly_1,
                    spike_out		=> h_1);

hidden2: entity work.neuron 
        generic map(w_0				=> -113,
                    w_1				=> -184,
                    w_2				=> -208,
                    bias			=> 210,
                    v_th			=> v_th)
        port map(   clk      		=> clk,
                    reset			=> reset,
                    sp_0			=> r_sp,
                    sp_1			=> g_sp,
                    sp_2			=> b_sp,
                    neuron_reset	=> res_ly_1,
                    spike_out	=> h_2);

hidden3: entity work.neuron 
        generic map(w_0				=> 83,
                    w_1				=> 47,
                    w_2				=> -79,
                    bias			=> -43,
                    v_th			=> v_th)
        port map(   clk      		=> clk,
                    reset			=> reset,
                    sp_0			=> r_sp,
                    sp_1			=> g_sp,
                    sp_2			=> b_sp,
                    neuron_reset	=> res_ly_1,
                    spike_out	=> h_3);

hidden4: entity work.neuron 
        generic map(w_0				=> 11,
                    w_1				=> 74,
                    w_2				=> -61,
                    bias			=> -42,
                    v_th			=> v_th)
        port map(   clk      		=> clk,
                    reset			=> reset,
                    sp_0			=> r_sp,
                    sp_1			=> g_sp,
                    sp_2			=> b_sp,
                    neuron_reset	=> res_ly_1,
                    spike_out	=> h_4);

hidden5: entity work.neuron 
        generic map(w_0				=> 46,
                    w_1				=> -13,
                    w_2				=> 61,
                    bias			=> -78,
                    v_th			=> v_th)
        port map(   clk      		=> clk,
                    reset			=> reset,
                    sp_0			=> r_sp,
                    sp_1			=> g_sp,
                    sp_2			=> b_sp,
                    neuron_reset	=> res_ly_1,
                    spike_out	=> h_5);

hidden6: entity work.neuron 
        generic map(w_0				=> 125,
                    w_1				=> 179,
                    w_2				=> 168,
                    bias			=> -216,
                    v_th			=> v_th)
        port map(   clk      		=> clk,
                    reset			=> reset,
                    sp_0			=> r_sp,
                    sp_1			=> g_sp,
                    sp_2			=> b_sp,
                    neuron_reset	=> res_ly_1,
                    spike_out	=> h_6);

output0: entity work.neuron 
        generic map(w_0				=> 42,
                    w_1				=> -222,
                    w_2				=> 13,
                    w_3				=> 2,
                    w_4				=> 60,
                    w_5				=> -101,
                    w_6				=> 316,
                    bias			=> -59,
                    v_th			=> v_th)
        port map(   clk      	    => clk,
                    reset			=> reset,
                    sp_0			=> h_0,
                    sp_1			=> h_1,
                    sp_2			=> h_2,
                    sp_3			=> h_3,
                    sp_4			=> h_4,
                    sp_5			=> h_5,
                    sp_6			=> h_6,
                    neuron_reset	=> res_ly_2,
                    spike_out	=> out_0);

output1: entity work.neuron 
        generic map(w_0				=> -88,
                    w_1				=> 8,
                    w_2				=> -423,
                    w_3				=> 82,
                    w_4				=> -59,
                    w_5				=> 16,
                    w_6				=> -346,
                    bias			=> 155,
                    v_th			=> v_th)
        port map(   clk      		=> clk,
                    reset			=> reset,
                    sp_0			=> h_0,
                    sp_1			=> h_1,
                    sp_2			=> h_2,
                    sp_3			=> h_3,
                    sp_4			=> h_4,
                    sp_5			=> h_5,
                    sp_6			=> h_6,
                    neuron_reset	=> res_ly_2,
                    spike_out	=> out_1);


process

begin
	wait until rising_edge(clk);
	
	-- input FFs
	reset		<= not reset_n;
	
	vs_0		<= vs_in;
	hs_0		<= hs_in;
	de_0		<= de_in;
	vs_q		<= vs_0;
	de_q		<= de_0;
	
	r_0			<= to_integer(unsigned(r_in)); 
	g_0			<= to_integer(unsigned(g_in));
	b_0			<= to_integer(unsigned(b_in));
	
	if (vs_0 = '1' and vs_q = '0') then
		frame_reset <= '1';
	else
		frame_reset <= '0';
	end if;
	

	if (de_q = '1' and de_1 = '0') or (de_0 = '1' and step >= sp_steps) then 
		step <= 1;
		neuron_reset <= '1';
	elsif de_0 = '1' then
		step <= step + 1;
		neuron_reset <= '0';
	else
		step <= 1;
		neuron_reset <= '0';
	end if;
	
	-- count spikes of output neurons
	if out_0 = '1' then
		num_out0_sp <= num_out0_sp + 1;
	end if;
	
	if out_1 = '1' then
		num_out1_sp <= num_out1_sp + 1;
	end if;
		
	-- create output 	
	if res_ly_2 = '1' then	
		if num_out0_sp >= n_sp_to_activate then         -- if enough output spikes were generated in neuron 1, output blue
			 r_out_1 <= '1';
			 g_out_1 <= '0';
			 b_out_1 <= '0';
		elsif num_out1_sp >= n_sp_to_activate then      -- if enough output spikes were generated in neuron 2, output yellow
			 r_out_1 <= '0';
			 g_out_1 <= '1';
			 b_out_1 <= '0';
		else                                            -- otherwise output black
			 r_out_1 <= '0';
			 g_out_1 <= '0';
			 b_out_1 <= '0';
		end if;
		
		num_out0_sp  <= 0;
		num_out1_sp  <= 0;
	end if;
	 
	
	-- output FFs 
	vs_out		<= vs_1;
	hs_out		<= hs_1;
	de_out		<= de_1;
	r_out		<= (others => r_out_1);
	g_out		<= (others => g_out_1);
	b_out		<= (others => b_out_1);
	
end process;


clk_o <= clk;
led   <= "000";

end behave;