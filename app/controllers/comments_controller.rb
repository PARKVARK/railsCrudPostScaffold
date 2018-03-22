class CommentsController < ApplicationController
  def create  #댓글 생성
    comment = Comment.new(comment_params)
    comment.post_id = params[:post_id]
    comment.user_id = current_user.id
    
    comment.save
    
    redirect_to '/'  #뒤로가기
  end

  def destroy   #댓글 삭제
    comment = Comment.find(params[:id])
    comment.destroy

    redirect_to '/'
  end
  
  def comment_params
    params.require(:comment).permit(:content)
  end


end
