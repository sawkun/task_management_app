class TasksController < ApplicationController
  before_action :set_user
  
  
  def index
    @tasks = Task.all.order(created_at: :desc)
  end
  
  def show
  end
  
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(task_params)
    if @task.save
       flash[:success] = "タスク新規作成しました。"
       redirect_to user_tasks_url @user
    else
      render :new
    end
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  private
  
   def set_user
     @user = User.find(params[:user_id])
   end
   
   def task_params
     params.require(:task).permit(:name, :detail, :created_at, :updated_at)
   end
  
end
