class Admin::Games::Nds
  include Mongoid::Document
  include Admin::Games::GameBase
  
  field :console, type: String, default: "Nintendo DS"
  field :resource_name, type: String, default: "nds"
end