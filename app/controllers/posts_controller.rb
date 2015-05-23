class PostsController < ApplicationController
  def create
    Post.create(post_params)
  end
end
