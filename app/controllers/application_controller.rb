class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def max_title_len
    45
  end
  
  def set_title(str)
    str = str.strip
    @title = str[0, max_title_len]
    @title << '...' if str.length > max_title_len
  end
end
