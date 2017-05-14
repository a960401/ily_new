class BarsController < ApplicationController
  def index
  end

  def show
  	@bar=Bar.find(params[:id])
  end

  def search
  	if params[:search]
  		@search=Bar.search(params[:search]).all
  	end
  end
end
