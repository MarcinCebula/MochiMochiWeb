class Admin::Console::Ps3Controller < Admin::Console::BaseController
  before_filter :set_console, :only => [:new, :create, :update, :destroy]

  private
  def set_console
    @console = Admin::Games::Ps3.new params[:console]
  end
end
