class Api::V1::Deals::Games::Xbox360Controller < Api::V1::Deals::Games::BaseController
  before_filter :before_index, :only => [:index]

  private
  def before_index
    @deals = Deals::Games::Xbox360.all
  end
end
