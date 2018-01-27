class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  #simple authentication, where only one user is created for testing purposes
  http_basic_authenticate_with name: "cvwo2018", password: "cvwo2018", only: :index
  
  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end
 
  # GET /tasks/new
  def new
    @task = Task.new
    @categories = Category.all.map{|c| [ c.name, c.id ] }
  end

  # GET /tasks/1/edit
  def edit
    @categories = Category.all.map{|c| [ c.name, c.id ] }
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)
    @task.category_id = params[:category_id]
    
    respond_to do |format|
      if @task.save
        flash[:success] = 'Task was successfully created.'
        format.html { redirect_to @task }
        format.json { render :show, status: :created, location: @task }
      else
        flash[:danger] = 'There was a problem creating the Task.'
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    @task.category_id = params[:category_id]

    respond_to do |format|
      if @task.update(task_params)
        flash[:success] = 'Task was successfully updated.'
        format.html { redirect_to @task }
        format.json { render :show, status: :ok, location: @task }
      else
        flash[:danger] = 'There was a problem updating the Task.'
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      flash[:success] = 'Task was successfully deleted.'
      format.html { redirect_to tasks_path }
      format.json { head :no_content }
    end
  end
 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:task_name, :deadline, :details, :category_id)
    end
end
