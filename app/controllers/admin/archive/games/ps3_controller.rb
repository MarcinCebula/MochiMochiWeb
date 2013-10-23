class Admin::Archive::Games::Ps3Controller < Admin::Archive::Games::BaseController
  before_filter :set_console_class

  private
  def set_console_class
    @deals_class = ::Archive::Games::Ps3
  end
end
