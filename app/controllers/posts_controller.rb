class PostsController < ApplicationController
  before_action :move_to_index, except: [:first_page]

  def index 
  end

  def first_page
  end

  private
    def move_to_index
    redirect_to action: :first_page unless user_signed_in?
  end
end
