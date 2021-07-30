class CodeChallengesController < ApplicationController
  before_action :set_code_challenge, only: [:update, :destroy]

 
  # POST /code_challenges
  def create
    @code_challenge = CodeChallenge.new(code_challenge_params)
    if @code_challenge.save
      render json: @code_challenge, status: :created, location: @code_challenge
    else
      render json: @code_challenge.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /code_challenges/1
  def update
    if @code_challenge.update(code_challenge_params)
      render json: @code_challenge
    else
      render json: @code_challenge.errors, status: :unprocessable_entity
    end
  end

  # DELETE /code_challenges/1
  def destroy
    @code_challenge.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_challenge
      @code_challenge = CodeChallenge.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def code_challenge_params
      params.require(:code_challenge).permit(:name, :solution, :description, :user_created, :user_id, :programing_language_id)
    end
end
