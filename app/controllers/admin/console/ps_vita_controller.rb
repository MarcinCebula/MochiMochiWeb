class Admin::Console::PsVitaController < Admin::Console::BaseController
  before_filter :set_console, :only => [:new, :create, :update, :destroy]

  private
  def set_console
    @console = Admin::Games::PsVita.new params[:console]
  end

end
