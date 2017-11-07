class TasksController < ApplicationController

  before_action :find_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    # @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to task_path(id: task.id)
  end

  def edit
    # @task = Task.find(params[:id])
  end

  def update
    # @task = Task.find(params[:id])
    # @task.update(params[:task])
    @task.update(task_params)

    redirect_to task_path(id: task.id)
  end

  def destroy
    # @task = Task.find(params[:id])
    @task.destroy

    redirect_to task_path
  end

  private

  def task_params
    params.require(:task).permit(:name, :priority)
  end

  def find_task
     @task = Task.find(params[:id])
  end

end
