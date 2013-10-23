class Admin::Archive::Games::PspController < Admin::Archive::Games::BaseController
  before_filter :set_deals_class

  private
  def set_deals_class
    @deals_class = ::Archive::Games::Psp
  end
end
