class PostsController < ApplicationController
  def create
    Post.create!(post_params)

    if request.xhr?
      render :json => Post.where(:timeline_id => post_params["timeline_id"])
    else
      redirect_to posts_path
    end
  end

  private

  def post_params
    params.require(:post).permit(:timeline_id, :author_name, :message)
  end
end
