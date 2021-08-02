
require 'jwt'

class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def me
    user  = User.validateUser(params[:token])
    render json: user
  end

  def create
    hmac_secret = 'my$ecretK3y'
    @user = User.new(user_params)
    if @user.save
      token = JWT.encode user_model(@user), hmac_secret, 'HS256'
      render json: {token: token}
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def login
    hmac_secret = 'my$ecretK3y'
    begin
      @user = User.find_by(email: params[:email])
      if @user.authenticate(params[:password])
        token = JWT.encode user_model(@user), hmac_secret, 'HS256'
        render json: {token: token}
      else
        render json: {msg:'Invalid credentials'}
      end
    rescue => exception
      render json: {msg:'Invalid credentials'}
    end

  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :github, :image, :phone)
    end

    def user_model(user)
      userModel = {
        id: user.id,
        email: user.email,
        name:user.name, 
       github: user.github,
        image: user.image , 
        phone: user.phone
      }
    end

end
