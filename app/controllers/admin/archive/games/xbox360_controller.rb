class Admin::Archive::Games::Xbox360Controller < Admin::Archive::Games::BaseController
  before_filter :set_deals_class

  private
  def set_deals_class
    @deals_class = ::Archive::Games::Xbox360
  end
end
