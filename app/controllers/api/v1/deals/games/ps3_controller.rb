class Api::V1::Deals::Games::Ps3Controller < Api::V1::Deals::Games::BaseController
  before_filter :before_index, :only => [:index]

  private
  def before_index
    @deals = Deals::Games::Ps3.all
  end
end
