class TasksController < ApplicationController

  def index
    @tasks = Task.all
    @done = Task.where("done = true")
    @todo = Task.where("done = false")
    @task = Task.new
    @comment = Comment.new
  end

  def create
    @task = Task.new(task_params)
    @task.user = current_user
    @task.save
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
  end

  def task_params
    params.require(:task).permit(:title, :done, :deadline)
  end
end
