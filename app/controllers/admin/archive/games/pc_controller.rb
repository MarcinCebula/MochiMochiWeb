class Admin::Archive::Games::PcController < Admin::Archive::Games::BaseController
  before_filter :set_deals_class

  private
  def set_deals_class
    @deals_class = ::Archive::Games::Pc
  end
end
