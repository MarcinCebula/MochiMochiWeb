class Admin::Console::N3dsController < Admin::Console::BaseController
  before_filter :set_console, :only => [:new, :create, :update, :destroy]

  private
  def set_console
    @console = Admin::Games::N3ds.new params[:console]
  end
end
