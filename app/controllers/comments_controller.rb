class CommentsController < ApplicationController
  def bar_create
  	comment=Comment.new(
  	comment.content=params[:content]
  	comment.bar_id=params[:bar_id]
  	comment.save

  	redirect_to :back
  end

  def food_create
  end

  def snack_create
  	
  end

  def destroy
  end
end
