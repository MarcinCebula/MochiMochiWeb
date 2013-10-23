class Admin::Deals::Games::Xbox360Controller < Admin::Deals::Games::BaseController
  before_filter :set_deals_class
  before_filter :before_archive

  private
  def set_deals_class
    @deals_class = ::Deals::Games::Xbox360
  end
  def before_archive
    @deals_class = ::Deals::Games::Xbox360
    @archive_class = ::Archive::Games::Xbox360
  end

end
