class PostsController < ApplicationController
  before_action :move_to_index, except: [:first_page]

  def first_page
  end

  def index 
    d = Date.today
    @month = d.strftime("%m")
    @year = d.strftime("%Y")
    @posts = current_user.posts.current_month.order("date ASC")
    @post = @posts.last
  end

  def new
    @post = Post.new
    post = current_user.posts.current_month

    gon.total_m = post.sum(:expence)
    
    gon.number_m = post.count(:expence)
    gon.total_w = post.sum(:latest_weight)
    gon.number_w = post.count(:latest_weight)
    @last_time_w = post.last
    if @last_time_w.nil?
      @last_time_w = current_user.personal.weight
      gon.last_time_w = @last_time_w
    else
      gon.last_time_w = @last_time_w.latest_weight
    end
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      redirect_to new_post_path,　data: { turbolinks: false }
    end
  end

  def show
    @post = Post.find(params[:id])
    @date = @post.date.strftime("%Y %m %d")
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to root_path
  end

  def search
    @search_params1 = params[:keyword1]
    @search_params2 = params[:keyword2]
    @search_params = @search_params1 + '-' + @search_params2
    @posts = current_user.posts.search(@search_params)
  end


  private

  def move_to_index
    redirect_to action: :first_page unless user_signed_in?
  end

  def post_params
    params.require(:post).permit(:date, :expence, :total_expence, :average_expence, :average_weight, :latest_weight, :gap_weight, :text).merge(user_id: current_user.id)
  end
end
