class Api::V1::Archive::Games::Xbox360Controller < Api::V1::Archive::Games::BaseController
  before_filter :before_index, :only => [:index]

  private
  def before_index
    @deals = Archive::Games::Xbox360.all
  end
end
