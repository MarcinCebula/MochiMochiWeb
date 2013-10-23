class Api::V1::Archive::Games::PspController < Api::V1::Archive::Games::BaseController
  before_filter :before_index, :only => [:index]

  private
  def before_index
    @deals = Archive::Games::Psp.all
  end
end
