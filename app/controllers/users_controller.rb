class UsersController < ApplicationController

  def edit
    @user = User.find(params[:id]) 
  end

  # def update
  #   user = User.find(params[:id])
  #   user.update(user_params)
  # end
end

