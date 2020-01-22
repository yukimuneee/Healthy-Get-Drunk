class UsersController < ApplicationController

  def edit
    @user = User.find(current_user.id)
  end

  # def update
  #   user = User.find(params[:id])
  #   user.update(user_params)
  # end
end

