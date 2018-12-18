
class Timer
  #write your code here
  attr_accessor :seconds, :time_string

  def initialize
    @seconds = 0
  end
      
  def time_string 
    if seconds < 60
      sec = @seconds
      @time_string = sprintf("%02d:%02d:%02d", "00", "00", sec)
    elsif seconds >= 60 and seconds < 3600
      min = @seconds / 60
      sec = @seconds % 60
      @time_string = sprintf("%02d:%02d:%02d", "00", min, sec)
    elsif seconds >= 3600
      hour = @seconds / 3600
      min = (@seconds - 3600) / 60
      sec = @seconds % 60
      @time_string = sprintf("%02d:%02d:%02d", hour, min, sec)
    else
    end
    @time_string
  end

end