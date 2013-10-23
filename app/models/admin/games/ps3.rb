class Admin::Games::Ps3
  include Mongoid::Document
  include Admin::Games::GameBase
  
  field :console, type: String, default: "PlayStation 3"  
  field :resource_name, type: String, default: "ps3"
end