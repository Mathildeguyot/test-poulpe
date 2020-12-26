class TasksController < ApplicationController

  def index
    @user = current_user
    @tasks = @user.tasks
    @done = @tasks.where("done = true")
    @todo = @tasks.where(done: false, urgent: false)
    @urgent = @tasks.where(done: false, urgent: true)

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
    params.require(:task).permit(:title, :done, :deadline, :urgent)
  end
end
