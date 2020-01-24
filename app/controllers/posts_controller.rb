class PostsController < ApplicationController
  before_action :move_to_index, except: [:first_page]

  def first_page
  end

  def index 
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
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
    params.require(:post).permit(:expence, :total_expence, :average_expence, :average_weight, :latest_weight, :gap_weight, :text).merge(user_id: current_user.id)
  end
end
