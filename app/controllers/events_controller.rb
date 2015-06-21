class EventsController < ApplicationController

  def create
    Event.create!(event_params)

    if request.xhr?
      render :json => Event.where(:space_id => event_params["space_id"])
    else
      redirect_to events_path
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :datetime)
  end

end
