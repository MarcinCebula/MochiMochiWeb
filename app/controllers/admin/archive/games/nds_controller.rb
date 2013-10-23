class Admin::Archive::Games::NdsController < Admin::Archive::Games::BaseController
  before_filter :set_console_class

  private
  def set_console_class
    @deals_class = ::Archive::Games::Nds
  end
end
