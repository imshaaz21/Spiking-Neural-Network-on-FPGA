%==========================================================================

function rv = validateattributes_with_return_value (varargin)
  try
    validateattributes (varargin{:});
    rv = true;
  catch
    rv = false;
  end
end
