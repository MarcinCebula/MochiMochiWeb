class PagesController < ApplicationController
  before_filter :authenticate_admin, :only => [:flatui]

  def index
  end

  def not_found
  end

  def flatui
  end
end
