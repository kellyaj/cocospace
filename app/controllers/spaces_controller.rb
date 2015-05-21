class SpacesController < ApplicationController
  def index
    slug = params[:slug]
    if slug.nil?
      redirect_to new_space_path
    end
    @space = Space.find_by_slug(params[:slug])
  end

  def new
    @space = Space.new
  end

  def create
    Space.create({:name => params[:name]})

    redirect_to ''
  end
end
