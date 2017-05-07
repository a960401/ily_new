class BarsController < ApplicationController
  def index
  end

  def show
  	@bar=Bar.find(params[:id])
  end
end
