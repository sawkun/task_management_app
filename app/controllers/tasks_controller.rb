class TasksController < ApplicationController
  
  def index
    @tasks = Task.all
  end
  
  def show
  end
  
  def new
  end
  
  def create
    redirect_to tasks_url
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
end
