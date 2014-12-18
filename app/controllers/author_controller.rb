class AuthorController < ApplicationController
  before_filter :authenticate_author!

  def show
    @author = Author.find(params[:id])
  end

end
