class Api::V1::Archive::Games::PsVitaController < Api::V1::Archive::Games::BaseController
  before_filter :before_index, :only => [:index]

  private
  def before_index
    @deals = Archive::Games::PsVita.all
  end
end
