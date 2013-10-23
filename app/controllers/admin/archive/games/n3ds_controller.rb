class Admin::Archive::Games::N3dsController < Admin::Archive::Games::BaseController
  before_filter :set_deals_class

  private
  def set_deals_class
    @deals_class = ::Archive::Games::N3ds
  end
end
