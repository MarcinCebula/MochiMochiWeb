class Admin::Games::Pc
  include Mongoid::Document
  include Admin::Games::GameBase
  
  field :console, type: String, default: "PC"  
  field :resource_name, type: String, default: "pc"
end