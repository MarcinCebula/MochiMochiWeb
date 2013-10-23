class Admin::Utilities::Retailer
  include Mongoid::Document

  before_save :create_external_links

  validates_uniqueness_of :name
  validates_presence_of :name
  validates_presence_of :url
  validates_presence_of :logo
  validates_presence_of :logo_width

  field :name, type: String
  field :url, type: String
  field :logo, type: String
  field :logo_width, type: Integer

  private
  def create_external_links
    self.url =  Util.url_with_protocol(self.url)
    self.logo =  Util.url_with_protocol(self.logo)
  end
end
