class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    title = params[:task][:title]
    details = params[:task][:details]
    @task = Task.create(title: title, details: details)
    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    title = params[:task][:title]
    details = params[:task][:details]
    completed = params[:task][:completed]
    @task.update(title: title, details: details, completed: completed)
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
  end
end
