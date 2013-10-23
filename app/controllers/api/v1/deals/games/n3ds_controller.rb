class Api::V1::Deals::Games::N3dsController < Api::V1::Deals::Games::BaseController
  before_filter :before_index, :only => [:index]

  private
  def before_index
    @deals = Deals::Games::N3ds.all
  end
end
