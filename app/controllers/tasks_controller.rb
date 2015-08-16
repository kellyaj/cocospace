class TasksController < ApplicationController
  def create
    Task.create!(task_params)

    if request.xhr?
      render :json => Task.where(:space_id => post_params["space_id"])
    else
      redirect_to tasks_path
    end
  end

  private

  def task_params
    params.require(:task).permit(:space_id, :name)
  end
end
