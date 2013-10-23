class Admin::Archive::Games::WiiController < Admin::Archive::Games::BaseController
  before_filter :set_deals_class

  private
  def set_deals_class
    @deals_class = ::Archive::Games::Wii
  end
end
