class Admin::Deals::Games::NdsController < Admin::Deals::Games::BaseController
  before_filter :set_deals_class
  before_filter :before_archive

  private
  def set_deals_class
    @deals_class = ::Deals::Games::Nds
  end
  def before_archive
    @deals_class = ::Deals::Games::Nds
    @archive_class = ::Archive::Games::Nds
  end

end
