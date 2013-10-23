class Api::V1::Deals::Games::PspController < Api::V1::Deals::Games::BaseController
  before_filter :before_index, :only => [:index]

  private
  def before_index
    @deals = Deals::Games::Psp.all
  end
end
