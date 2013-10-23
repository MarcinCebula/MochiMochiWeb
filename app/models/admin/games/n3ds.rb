class Admin::Games::N3ds
  include Mongoid::Document
  include Admin::Games::GameBase
  
  field :console, type: String, default: "Nintendo 3DS"  
  field :resource_name, type: String, default: "n3ds"
end