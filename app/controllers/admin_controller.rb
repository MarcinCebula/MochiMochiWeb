class AdminController < ApplicationController
  before_filter :authenticate_admin, :only => [:index]

  def index
  end

  def login
  end
end
