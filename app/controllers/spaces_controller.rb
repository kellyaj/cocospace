class SpacesController < ApplicationController
  def index
    slug = params[:slug]
    if slug.nil?
      redirect_to new_space_path
      return
    end

    space = Space.find_by_slug(params[:slug])
    timeline = space.timeline
    events = space.events

    @presenter = {
      :space => space,
      :timeline => timeline,
      :posts => timeline.posts,
      :form => {
        :action => posts_path
      }
    }
    @events_presenter = {
      :events => events,
      :url => events_path
    }
    @taskline_presenter = {
    }
  end

  def new
    @space = Space.new
  end

  def create
    space = Space.create({:name => params[:name]})

    redirect_to "/#{space.slug}"
  end

end
