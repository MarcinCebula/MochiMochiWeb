class Admin::GameAttributes::Mode
  include Mongoid::Document

  field :single_player, type: Boolean, default: false
  field :single_player_title, type: String, default: "Single-Player"

  field :multi_player, type: Boolean, default: false
  field :multi_player_title, type: String, default: "Multi-Player"

  field :coop, type: Boolean, default: false
  field :coop_title, type: String, default: "Co-Op"

  field :local_coop, type: Boolean, default: false
  field :local_coop_title, type_title: String, default: "Local-Co-Op"

  field :controller_enabled, type: Boolean, default: false
  field :controller_enabled_title, type: String, default: "Controller Enabled"

  field :cross_platform, type: Boolean, default: false
  field :cross_platform_title, type: String, default: "Cross-Platform"

  field :mmo, type: Boolean, default: false
  field :mmo_title, type: String, default: "MMO"



  def self.fix_checkbox_params(params)
    if !params; return nil end
    genres = %w(single_player multi_player coop local_coop controller_enabled cross_platform mmo)

    result = {}
    genres.each do |genre|
      result[genre] =  if(params[genre]); true else false end
    end
    return result
  end
end
