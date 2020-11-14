class BlogsController < ApplicationController
  def index
  end

  def show
  end
  
    def create
    blog = Blog.new(blog_params)
    blog.save
    redirect_to blogs_path  
    end

  def new
        @list = List.new
  end

  def edit
  end
end
