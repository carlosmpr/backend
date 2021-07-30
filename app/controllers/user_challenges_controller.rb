class UserChallengesController < ApplicationController
  before_action :set_user_challenge, only: [:show, :update, :destroy]

  
  # POST /user_challenges
  def create
    @user_challenge = UserChallenge.new(user_challenge_params)

    if @user_challenge.save
      render json: @user_challenge, status: :created, location: @user_challenge
    else
      render json: @user_challenge.errors, status: :unprocessable_entity
    end
  end

  

  # DELETE /user_challenges/1
  def destroy
    @user_challenge.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_challenge
      @user_challenge = UserChallenge.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_challenge_params
      params.require(:user_challenge).permit(:user_id, :code_challenge_id)
    end
end
