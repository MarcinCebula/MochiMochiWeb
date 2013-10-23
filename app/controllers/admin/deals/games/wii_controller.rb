class Admin::Deals::Games::WiiController < Admin::Deals::Games::BaseController
  before_filter :set_deals_class
  before_filter :before_archive

  private
  def set_deals_class
    @deals_class = ::Deals::Games::Wii
  end
  def before_archive
    @deals_class = ::Deals::Games::Wii
    @archive_class = ::Archive::Games::Wii
  end

end
