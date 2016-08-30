#app/controllers/site_controller.rb

class SiteController < ApplicationController

  def home
    render "home"
    # @site = Site.all
  end
end
