class Admin::Console::NdsController < Admin::Console::BaseController
  before_filter :set_console, :only => [:new, :create, :update, :destroy]


  private
  def set_console
    @console = Admin::Games::Nds.new params[:console]
  end

end
