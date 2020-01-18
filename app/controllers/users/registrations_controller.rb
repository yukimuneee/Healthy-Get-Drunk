# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController

  def index
  end

  def new
      @user = User.new
  end

  def create
      session[:nickname] = user_params[:nickname]
      session[:email] = user_params[:email]
      session[:password] = user_params[:password] 

      @user = User.new(
        nickname: session[:nickname],
        email: session[:email],
        password: session[:password],
      )

      check_user_valid = @user.valid?
      unless check_user_valid
        render :new
      else
        session[:through_first_valid] = "through_first_valid"
        redirect_to additional_path
      end
  end

  def new_additional
      @user = User.new
      @personal = Personal.new
  end

  def create_additional
    @user = User.new(
      nickname: session[:nickname],
      email: session[:email],
      password: session[:password],
    )
    @user.save 
    
    @personal = Personale.new(
      height: session[:height],
      weight: session[:weight],
      age: session[:age],
      month: session[:month],
      monthly_drinking_money: session[:monthly_drinking_money]
    )

    if @personal.save
      reset_session
      session[:id] = @user.id
      redirect_to done_path
      return 
    else
      reset_session
      redirect_to new_path
    end

  end

  def done
    unless session[:id]
      redirect_to root_path 
      return
    end
    sign_in User.find(session[:id])
  end

  private
    
  def user_params
    params.require(:user).permit(:nickname, :email, :password)
  end

  def cellphone_params
    params.require(:personal).permit(:height, :weight, :age, :month, :monthly_drinking_money)
  end

  # 前のpostアクションで定義されたsessionがなかった場合登録ページトップへリダイレクト
  def redirect_to_index_from_sms
    redirect_to signup_index_path unless session[:through_first_valid].present? && session[:through_first_valid] == "through_first_valid"
  end
end
