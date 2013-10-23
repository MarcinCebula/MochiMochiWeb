class Api::V1::Archive::Games::BaseController < Api::ApisController

  def index
    @deals =  @deals.desc(:position)
  end
end
