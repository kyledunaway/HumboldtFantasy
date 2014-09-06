class LinePostsController < ApplicationController

  def index
    @line_posts = LinePost.all(:order => "created_at DESC")
  end

  def show
    @line_post = LinePost.find(params[:id])
  end

  def new
    @line_post = LinePost.new
  end

  def edit
    @line_post = LinePost.find(params[:id])
  end

  def create
    @line_post = LinePost.new(params[:line_post])
    @line_post.user = current_user

    if @line_post.save
        redirect_to @line_post
    else
      render 'new'
    end
  end

  def update
    @line_post = LinePost.find(params[:id])

    if @line_post.update_attributes(params[:line_post])
      redirect_to @line_post
    else
      render 'edit'
      end
  end

  def destroy
    @line_post = LinePost.find(params[:id])
    @line_post.destroy

    redirect_to line_posts_path
  end
end
