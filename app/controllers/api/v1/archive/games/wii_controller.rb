class Api::V1::Archive::Games::WiiController < Api::V1::Archive::Games::BaseController
  before_filter :before_index, :only => [:index]

  private
  def before_index
    @deals = Archive::Games::Wii.all
  end
end
