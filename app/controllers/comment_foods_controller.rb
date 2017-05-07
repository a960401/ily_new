class CommentFoodsController < ApplicationController
  def create
  	comment=CommentFood.new
    comment.content=params[:content]
    comment.food_id=params[:food_id]
    comment.save

  	redirect_to :back
  end
    
  def destroy
    comment=CommentFood.find(params[:id])
    comment.destroy
    redirect_to :back
  end
end
