class Admin::Game
  include Mongoid::Document

  validates_uniqueness_of :title
  validates_presence_of :title
  before_save :if_cover_empty_assign_default

  embeds_one :n3ds, :class_name => "Admin::Games::N3ds", :inverse_of => :n3ds
  embeds_one :nds, :class_name => "Admin::Games::Nds", :inverse_of => :nds
  embeds_one :pc, :class_name => "Admin::Games::Pc", :inverse_of => :pc
  embeds_one :ps3, :class_name => "Admin::Games::Ps3", :inverse_of => :ps3
  embeds_one :ps_vita, :class_name => "Admin::Games::PsVita", :inverse_of => :ps_vita
  embeds_one :psp, :class_name => "Admin::Games::Psp", :inverse_of => :psp
  embeds_one :wii, :class_name => "Admin::Games::Wii", :inverse_of => :wii
  embeds_one :xbox360, :class_name => "Admin::Games::Xbox360", :inverse_of => :xbox360

  field :title, type: String
  field :cover, type: String, default: "/assets/no_image.jpg"
  index({ title: 1 }, { unique: true })

  def self.consoles_with_prefix(prefix)
    self.consoles.map {|value| prefix + '.' + value }
  end

  private
  def if_cover_empty_assign_default
    self.cover = "/assets/no_image.jpg" if self.cover.blank?
    self.cover = Util.url_with_protocol(self.cover)
  end
  def self.consoles
    ["n3ds", "nds", "pc", "ps3", "ps_vita", "psp", "wii", "xbox360"]
  end
  def self.search_by_title(search)
    self.where(:title => /#{search}/i)
  end
end
