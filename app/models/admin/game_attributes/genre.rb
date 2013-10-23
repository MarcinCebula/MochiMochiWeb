class Admin::GameAttributes::Genre
  include Mongoid::Document

  field :action, type: Boolean, default: false
  field :action_title, type: String, default: "Action"

  field :adventure, type: Boolean, default: false
  field :adventure_title, type: String, default: "Adventure"

  field :educational, type: Boolean, default: false
  field :educational_title, type: String, default: "Educational"

  field :fighting, type: Boolean, default: false
  field :fighting_title, type: String, default: "Fighting"

  field :first_person, type: Boolean, default: false
  field :first_person_title, type: String, default: "First-Person"

  field :mmo, type: Boolean, default: false
  field :mmo_title, type: String, default: "MMO"

  field :puzzle, type: Boolean, default: false
  field :puzzle_title, type: String, default: "Puzzle"

  field :racing, type: Boolean, default: false
  field :racing_title, type: String, default: "Racing"

  field :role_playing, type: Boolean, default: false
  field :role_playing_title, type: String, default: "Role-Playing"

  field :shooter, type: Boolean, default: false
  field :shooter_title, type: String, default: "Shooter"

  field :simulation, type: Boolean, default: false
  field :simulation_title, type: String, default: "Simulation"

  field :sports, type: Boolean, default: false
  field :sports_title, type: String, default: "Sports"

  field :strategy, type: Boolean, default: false
  field :strategy_title, type: String, default: "Strategy"

  field :third_person, type: Boolean, default: false
  field :third_person_title, type: String, default: "Third-Person"



  def self.fix_checkbox_params(params)
    if !params; return nil end
    genres = %w(action adventure educational fighting first_person mmo puzzle racing role_playing shooter simulation sports
 strategy third_person)

    result = {}
    genres.each do |genre|
      result[genre] =  if(params[genre]); true else false end
    end
    return result
  end

end
