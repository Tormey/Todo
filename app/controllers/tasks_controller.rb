class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
 
  def show
    @task = Task.find(params[:id])
  end
 
  def new
    @task = Task.new
    @categories = Category.all.map{|c| [ c.name, c.id ] }
  end
 
  def edit
    @task = Task.find(params[:id])
    @categories = Category.all.map{|c| [ c.name, c.id ] }
  end
 
  def create
    @task = Task.new(task_params)
    @task.category_id = params[:category_id]
 
    if @task.save
      redirect_to @task
    else
      render 'new'
    end
  end
 
  def update
    @task = Task.find(params[:id])
    @task.category_id = params[:category_id]
 
    if @task.update(task_params)
      redirect_to @task
    else
      render 'edit'
    end
  end
 
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
 
    redirect_to tasks_path
  end
 
  private
    def task_params
      params.require(:task).permit(:task_name, :deadline, :details)
    end
end
