class Admin::Console::PspController < Admin::Console::BaseController
  before_filter :set_console, :only => [:new, :create, :update, :destroy]

  private
  def set_console
    @console = Admin::Games::Psp.new params[:console]
  end
end
