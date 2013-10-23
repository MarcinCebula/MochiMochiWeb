class Admin::Games::Psp
  include Mongoid::Document
  include Admin::Games::GameBase
    
  field :console, type: String, default: "PSP"
  field :resource_name, type: String, default: "psp"
end