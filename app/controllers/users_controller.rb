class UsersController < ApplicationController

  def edit
    user = User.find(current_user.id)
    @nickname = user.nickname
    @height = user.personal.height
    @weight = user.personal.weight
    @age = user.personal.age
    @month = user.personal.month
    @monthly_drinking_money = user.personal.monthly_drinking_money
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
  end
end

