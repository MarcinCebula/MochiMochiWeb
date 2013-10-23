module Admin::Games::GameBase

  def self.included(receiver)
    receiver.class_eval do

      before_save :set_global_urls

      validates_uniqueness_of :title

      embedded_in :game, :class_name => "Admin::Game", :inverse_of => :game
      embeds_one :genre, :class_name => "Admin::GameAttributes::Genre", :inverse_of => :genre
      embeds_one :mode, :class_name => "Admin::GameAttributes::Mode", :inverse_of => :mode


      field :title, type: String
      field :cover, type: String
      field :price, type: Integer

      index({ title: 1 }, { unique: true })


      def active_mode_titles
        active_modes = []
        if(self.mode.single_player); active_modes << self.mode.single_player_title end
        if(self.mode.multi_player); active_modes << self.mode.multi_player_title end
        if(self.mode.coop); active_modes << self.mode.coop_title end
        if(self.mode.local_coop); active_modes << self.mode.local_coop_title end
        if(self.mode.controller_enabled); active_modes << self.mode.controller_enabled_title end
        if(self.mode.cross_platform); active_modes << self.mode.cross_platform_title end
        if(self.mode.mmo); active_modes << self.mode.mmo_title end
        active_modes
      end

      def active_genre_titles
        active_genre = []
        if(self.genre.action); active_genre << self.genre.action_title end
        if(self.genre.adventure); active_genre << self.genre.adventure_title end
        if(self.genre.educational); active_genre << self.genre.educational_title end
        if(self.genre.fighting); active_genre << self.genre.fighting_title end
        if(self.genre.first_person); active_genre << self.genre.first_person_title end
        if(self.genre.mmo); active_genre << self.genre.mmo end
        if(self.genre.puzzle); active_genre << self.genre.puzzle_title end
        if(self.genre.racing); active_genre << self.genre.racing_title end
        if(self.genre.role_playing); active_genre << self.genre.role_playing_title end
        if(self.genre.shooter); active_genre << self.genre.shooter_title end
        if(self.genre.simulation); active_genre << self.genre.simulation_title end
        if(self.genre.sports); active_genre << self.genre.sports_title end
        if(self.genre.strategy); active_genre << self.genre.strategy_title end
        if(self.genre.third_person); active_genre << self.genre.third_person_title end

        active_genre
      end

      private
      def set_global_urls
        self.cover = Util.url_with_protocol(self.cover)
      end

    end
  end

end
