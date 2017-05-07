class CommentBarsController < ApplicationController
  def create
  	comment=CommentBar.new(content: params[:content], bar_id: params[:bar_id])
  	comment.save

  	@comments=CommentBar.all
  	redirect_to :back
  end

  def destroy
  end
end
