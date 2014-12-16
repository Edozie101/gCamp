class TasksController < ApplicationController


def index
  @tasks = Task.all
end


def new
   @task = Task.new
end
def create
  @task = Task.new(task_params)
  @task.save
  if @task.save
    redirect_to tasks_path
  else
    render :new
  end

end

def edit
  @task = Task.find(params[:id])
end


def update
  @task = Task.find(params[:id])
  if @task.update(task_params)
  redirect_to @task, notice: "You have succesfully edited your task"
  else
  render :new
  end

end



def destroy
  @task = Task.find(params[:id])
  @task.destroy
  redirect_to tasks_url, notice: 'Task was succesfully deleted '
end

def show
  @task = Task.find(params[:id])


end




private

def task_params

  params.require(:task).permit{
    :description
    :date
    :completed
  }
end

end
