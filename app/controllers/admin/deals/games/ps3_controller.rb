class Admin::Deals::Games::Ps3Controller < Admin::Deals::Games::BaseController
  before_filter :set_deals_class
  before_filter :before_archive, :only => [:archive]

  private
  def set_deals_class
    @deals_class = ::Deals::Games::Ps3
  end
  def before_archive
    @deals_class = ::Deals::Games::Ps3
    @archive_class = ::Archive::Games::Ps3
  end

end
