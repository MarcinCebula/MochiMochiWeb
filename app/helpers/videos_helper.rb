module VideosHelper
  def display_video_with_width(youtube, width)
    ratio = 0.7784
    height = (ratio * width).round
    youtube.gsub(/width[^>]*/, "width=\"#{width}\" height=\"#{height}\"")
  end
  
end