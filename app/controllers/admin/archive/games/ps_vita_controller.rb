class Admin::Archive::Games::PsVitaController < Admin::Archive::Games::BaseController
  before_filter :set_deals_class

  private
  def set_deals_class
    @deals_class = ::Archive::Games::PsVita
  end
end
