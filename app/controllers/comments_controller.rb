class CommentsController < ApplicationController
  def create
    @task = Task.find(params[:task_id])
    @comment = Comment.new(comment_params)
    @comment.task = @task
    authorize @comment
    @comment.save
    redirect_to tasks_path(anchor: "task-#{@task.id}")
  end

  def destroy
    @comment = Comment.find(params[:id])
    @task = @comment.task
    authorize @comment
    @comment.destroy
    redirect_to tasks_path(anchor: "task-#{@task.id}")
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
