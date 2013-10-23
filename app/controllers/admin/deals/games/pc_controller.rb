class Admin::Deals::Games::PcController < Admin::Deals::Games::BaseController
  before_filter :set_deals_class
  before_filter :before_archive

  private
  def set_deals_class
    @deals_class = ::Deals::Games::Pc
  end
  def before_archive
    @deals_class = ::Deals::Games::Pc
    @archive_class = ::Archive::Games::Pc
  end

end
