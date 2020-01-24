class PostsController < ApplicationController
  before_action :move_to_index, except: [:first_page]

  def first_page
  end

  def index 
  end

  def new
    @post = Post.new
    @total_m = current_user.posts.sum(:expence)
    @number_m = current_user.posts.count(:expence)
    @total_w = current_user.posts.sum(:latest_weight)
    @number_w = current_user.posts.count(:latest_weight)
    @last_time_w = current_user.posts.last
    @last_time_w = @last_time_w.latest_weight
    binding.pry
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      redirect_to new_post_path,data: { turbolinks: false }
    end
  end

  def show
  end

  def destroy
  end


  private

  def move_to_index
    redirect_to action: :first_page unless user_signed_in?
  end

  def post_params
    params.require(:post).permit(:date, :expence, :total_expence, :average_expence, :average_weight, :latest_weight, :gap_weight, :text).merge(user_id: current_user.id)
  end
end
