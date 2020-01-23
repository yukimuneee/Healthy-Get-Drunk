class PostsController < ApplicationController
  before_action :move_to_index, except: [:first_page]

  def first_page
  end

  def index 
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end



  private
    def move_to_index
    redirect_to action: :first_page unless user_signed_in?
  end
end
