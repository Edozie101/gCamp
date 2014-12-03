class TasksController < ApplicationController
def new
   @task = Task.new
end
def create
  @task = Task.new(task_params)
  if @task.save
    redirect_to tasks

end

def edit
end


def update
  if @task.update(task_params)
  redirect_to @task, notice: "You have succesfully edited your task"
  else
  render :new
  end

end



def destroy
  @task.destroy
  redirect_to tasks_url, notice: 'Task was succesfully deleted '
end






private

def task_params

  params.require(:task).permit{
    :description
    :completed
  }
end

end
