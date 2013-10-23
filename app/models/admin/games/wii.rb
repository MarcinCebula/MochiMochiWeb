class Admin::Games::Wii
  include Mongoid::Document
  include Admin::Games::GameBase

  field :console, type: String, default: "Nintendo Wii"
  field :resource_name, type: String, default: "wii"
end