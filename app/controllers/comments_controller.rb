class CommentsController < ApplicationController
  def create
    @task = Task.find(params[:task_id])
    @comment = Comment.new(comment_params)
    @comment.task = @task
    @comment.save
    redirect_to tasks_path
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to tasks_path
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
