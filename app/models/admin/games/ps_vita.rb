class Admin::Games::PsVita
  include Mongoid::Document
  include Admin::Games::GameBase
  
  field :console, type: String, default: "PlayStation Vita"
  field :resource_name, type: String, default: "ps_vita"
end