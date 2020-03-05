class TasksController < ApplicationController
  before_action :set_user
  
  
  def index
    @tasks = Task.all.order(created_at: :desc)
  end
  
  def show
  end
  
  def new
    @task = Task.new(name: params[:name], detail: params[:detail])
  end
  
  def create
    @task = Task.new(name: params[:name], detail: params[:detail])
    if @task.save
       flash[:success] = "タスク新規作成しました。"
       redirect_to user_tasks_url
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
  
end
