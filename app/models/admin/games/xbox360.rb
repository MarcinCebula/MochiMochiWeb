class Admin::Games::Xbox360
  include Mongoid::Document
  include Admin::Games::GameBase

  field :console, type: String, default: "Xbox 360"
  field :resource_name, type: String, default: "xbox360"
end