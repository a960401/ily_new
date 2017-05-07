class CommentSnacksController < ApplicationController
  def create
  	comment=CommentSnack.new
    comment.content=params[:content]
    comment.snack_id=params[:snack_id]
    comment.save

  	redirect_to :back
  end
    
  def destroy
    comment=CommentSnack.find(params[:id])
    comment.destroy
    redirect_to :back
  end
end
