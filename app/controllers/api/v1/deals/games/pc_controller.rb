class Api::V1::Deals::Games::PcController < Api::V1::Deals::Games::BaseController
  before_filter :before_index, :only => [:index]

  private
  def before_index
    @deals = Deals::Games::Pc.all
  end
end
