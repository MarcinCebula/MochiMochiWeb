class Admin::Console::Xbox360Controller < Admin::Console::BaseController
  before_filter :set_console, :only => [:new, :create, :update, :destroy]

  private
  def set_console
    @console = Admin::Games::Xbox360.new params[:console]
  end
end
