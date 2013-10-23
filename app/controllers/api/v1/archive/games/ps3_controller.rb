class Api::V1::Archive::Games::Ps3Controller < Api::V1::Archive::Games::BaseController
  before_filter :before_index, :only => [:index]

  private
  def before_index
    @deals = Archive::Games::Ps3.all
  end
end
