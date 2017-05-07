class CommentBarsController < ApplicationController
  def create
  	comment=CommentBar.new
    comment.content=params[:content]
    comment.bar_id=params[:bar_id]
    comment.save

  	redirect_to :back
  end
    
  def destroy
    comment=CommentBar.find(params[:id])
    comment.destroy
    redirect_to :back
  end
end
