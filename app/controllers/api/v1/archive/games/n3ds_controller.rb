class Api::V1::Archive::Games::N3dsController < Api::V1::Archive::Games::BaseController
  before_filter :before_index, :only => [:index]

  private
  def before_index
    @deals = Archive::Games::N3ds.all
  end
end
