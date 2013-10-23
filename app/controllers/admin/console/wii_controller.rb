class Admin::Console::WiiController < Admin::Console::BaseController
  before_filter :set_console, :only => [:new, :create, :update, :destroy]

  private
  def set_console
    @console = Admin::Games::Wii.new params[:console]
  end
end
