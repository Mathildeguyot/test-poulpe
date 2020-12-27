class TasksController < ApplicationController

  def index
    @tasks = policy_scope(Task).where(user: current_user).order(:deadline)
    @done = @tasks.where("done = true")
    @todo = @tasks.where(done: false, urgent: false)
    @urgent = @tasks.where(done: false, urgent: true)

    @task = Task.new
    @comment = Comment.new
  end


  def create
    @task = current_user.tasks.new(task_params)
    authorize @task
    if @task.save
      redirect_to tasks_path
    end
  end

  def destroy
    @task = Task.find(params[:id])
    authorize @task
    @task.destroy
    redirect_to tasks_path
  end

  def update
    @task = Task.find(params[:id])
    authorize @task
    @task.update(task_params)
    redirect_to tasks_path
  end

  def task_params
    params.require(:task).permit(:title, :done, :deadline, :urgent)
  end
end
