class TasksController < ApplicationController

  before_action :find_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)


    redirect_to task_path(@task)
  end

  def edit
  end

  def update
    # @task.update(params[:task]) => not secure, that´s why we implement the private task_params method so no additional inputs can be passed in the form
    @task.update(task_params)

    redirect_to task_path(@task)
    #redirect_to task_path(id: task.id) => old school
  end

  def destroy
    @task.destroy

    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:name, :content, :priority)
  end
  # strong param against hackers

  def find_task
     @task = Task.find(params[:id])
  end

end
