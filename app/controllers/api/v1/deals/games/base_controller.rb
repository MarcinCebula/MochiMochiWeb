class Api::V1::Deals::Games::BaseController < Api::ApisController

  def index
    @deals =  @deals.desc(:position)
  end
end
