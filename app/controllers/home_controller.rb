class HomeController < ApplicationController
  def index
  	@scripts = Script.all
  end
end
