class PostsController < ApplicationController
  def index
  end

  def show
  	@snack=Snack.find(params[:id])
  	
  end
end
