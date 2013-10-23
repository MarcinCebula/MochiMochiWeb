class Admin::Games::Xbox360
  include Mongoid::Document
  include Admin::Games::GameBase

  field :console, type: String, default: "Apple OSX"
  field :resource_name, type: String, default: "apple_osx"
end
