class PostsController < ApplicationController

  def index
    @posts = Post.all

  end

  def show
    @posts = Post.find_by({ "id" => params["id"] })
  end

  def new
    @post = Post.new
  end

  def create
    @posts = Post.new
     @posts["author"] = params["post"]["author"]
     @posts["body"] = params["post"]["body"]
     @posts["image"] = params["post"]["image"]
     @posts.save
    

  end
end
