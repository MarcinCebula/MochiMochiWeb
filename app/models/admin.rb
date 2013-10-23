require 'bcrypt'
class Admin
  include Mongoid::Document
  
  before_save :encrypt_password
  attr_accessible :name, :password
  
  field :name, type: String
  field :password, type: String
  field :salt, type: String
  
  validates :name, :uniqueness => true
  
  def self.authenticate(name="", password="")
    admin = Admin.where(:name => /^#{name}$/i).first
    if name == (admin.name rescue "sd20zlmbu29dk2z0,z0dfh")
      if admin.password == BCrypt::Engine.hash_secret(password, admin.salt)
        admin
      end
    end  
  end
  
  def encrypt_password
    self.salt = BCrypt::Engine.generate_salt
    self.password = BCrypt::Engine.hash_secret(password, salt)
  end  
  
end