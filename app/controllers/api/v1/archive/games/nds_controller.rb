class Api::V1::Archive::Games::NdsController < Api::V1::Archive::Games::BaseController
  before_filter :before_index, :only => [:index]

  private
  def before_index
    @deals = Archive::Games::Nds.all
  end
end
