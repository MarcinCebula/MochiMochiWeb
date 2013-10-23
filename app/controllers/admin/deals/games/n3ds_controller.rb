class Admin::Deals::Games::N3dsController < Admin::Deals::Games::BaseController
  before_filter :set_deals_class
  before_filter :before_archive

  private
  def set_deals_class
    @deals_class = ::Deals::Games::N3ds
  end
  def before_archive
    @deals_class = ::Deals::Games::N3ds
    @archive_class = ::Archive::Games::N3ds
  end
end
