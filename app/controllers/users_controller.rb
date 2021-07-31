
require 'jwt'



class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created, location: @user
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
      userModel = {
        email: @user.email,
        name:@user.name, 
       github: @user.github,
        image: @user.image , 
        phone: @user.phone
      }
      if @user.authenticate(params[:password])
        token = JWT.encode userModel, hmac_secret, 'HS256'
        render json: {msg: token}
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
end
