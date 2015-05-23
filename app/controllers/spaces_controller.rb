class SpacesController < ApplicationController
  def index
    slug = params[:slug]
    if slug.nil?
      redirect_to new_space_path
      return
    end

    space = Space.find_by_slug(params[:slug])

    @presenter = {
      :space => space,
      :timeline => retrieve_timeline(space)
    }
  end

  def new
    @space = Space.new
  end

  def create
    Space.create({:name => params[:name]})

    redirect_to ''
  end

  private

  def retrieve_timeline(space)
    timeline = space.timeline
    {
      :name => timeline.name,
      :posts => timeline.posts
    }
  end
end
