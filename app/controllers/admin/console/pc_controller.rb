class Admin::Console::PcController < Admin::Console::BaseController
  before_filter :set_console, :only => [:new, :create, :update, :destroy]

  private
  def set_console
    @console = Admin::Games::Pc.new params[:console]
  end

end
