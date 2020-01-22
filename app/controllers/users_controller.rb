class UsersController < ApplicationController

  def edit
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    if @user.update(update_user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def update_user_params
    params.require(:user).permit(:nickname, personal_attributes: [:height, :weight, :age, :month, :monthly_drinking_money, :id])
  end

end

