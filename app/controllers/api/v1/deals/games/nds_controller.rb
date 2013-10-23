class Api::V1::Deals::Games::NdsController < Api::V1::Deals::Games::BaseController
  before_filter :before_index, :only => [:index]

  private
  def before_index
    @deals = Deals::Games::Nds.all
  end
end
