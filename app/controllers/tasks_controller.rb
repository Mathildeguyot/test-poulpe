class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @task = Task.new
    @comment = Comment.new
  end

  def create
    @task = Task.new(task_params)
    @task.user = current_user
    @task.save
    redirect_to tasks_path
  end

  def task_params
    params.require(:task).permit(:title, :done, :deadline)
  end
end
