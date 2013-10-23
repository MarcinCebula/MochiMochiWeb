class Admin::Deals::Games::PsVitaController < Admin::Deals::Games::BaseController
  before_filter :set_deals_class
  before_filter :before_archive

  private
  def set_deals_class
    @deals_class = ::Deals::Games::PsVita
  end
  def before_archive
    @deals_class = ::Deals::Games::PsVita
    @archive_class = ::Archive::Games::PsVita
  end

end
