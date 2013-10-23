module Util
  def self.url_with_protocol(url)
    /^http/.match(url) ? url : "http://#{url}"
  end
end
