class Admin::Deals::Games::PspController < Admin::Deals::Games::BaseController
  before_filter :set_deals_class
  before_filter :before_archive

  private
  def set_deals_class
    @deals_class = ::Deals::Games::Psp
  end
  def before_archive
    @deals_class = ::Deals::Games::Psp
    @archive_class = ::Archive::Games::Psp
  end

end
