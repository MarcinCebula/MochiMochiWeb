module Deals::Games::GameBase

  def self.included(receiver)
    receiver.class_eval do
      validates_uniqueness_of :title_id
      validates_presence_of :url
      validates_presence_of :retailer_id
      validates_presence_of :price


      field :title #title of the deal
      field :title_id  #this is the unique url
      field :description
      field :url, type: String
      field :price, type: Integer
      field :resource, type: String

      field :retailer_id, type: String
      field :retailer_name, type: String
      field :retailer_url, type: String
      field :retailer_logo, type: String
      field :retailer_logo_width, type: Integer

      field :cover, type: String
      field :game_title #title of the game
      field :original_price
      field :genre, type: Array
      field :modes, type: Array


      field :position, type: Integer, default: 100
      field :review, type: Integer, default: 0

      index({ title_id: 1 }, { unique: true })
      index({ position: 1})

      def save_custom_attributes(console)
        self.url =  Util.url_with_protocol(self.url)
        self.resource = console.resource_name
        self.cover = console.cover
        self.game_title = console.title
        self.original_price = console.price
        self.genre = console.active_genre_titles
        self.modes = console.active_mode_titles
        @retailer = Admin::Utilities::Retailer.find(self.retailer_id);
        self.retailer_name = @retailer.name
        self.retailer_url = @retailer.url
        self.retailer_logo = @retailer.logo
        self.retailer_logo_width = @retailer.logo_width
        self.title_id = generate_title_id(self.game_title, self.retailer_name, self.price)
      end

      private
      def generate_title_id(title, retailer, price)
        title_id_raw = title + ' ' + retailer + ' ' + format_to_dollar(price)
        title_id_raw.downcase.gsub(' ', '_').gsub('.', '_').gsub(':', '_')
      end
      def format_to_dollar(integer)
        price = integer.to_s
        case price.size
        when 2
          price.insert(0, "0")
        when 1
          price.insert(0, "00")
        when 0
          price = "000"
        end
        price.insert((price.size - 2), ".").insert(0, "$")
      end
    end
  end
end
