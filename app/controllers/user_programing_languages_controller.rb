class UserProgramingLanguagesController < ApplicationController
  before_action :set_user_programing_language, only: [:show, :update, :destroy]

 
  def create
    @user_programing_language = UserProgramingLanguage.new(user_programing_language_params)
    if @user_programing_language.save
      render json: @user_programing_language, status: :created, location: @user_programing_language
    else
      render json: @user_programing_language.errors, status: :unprocessable_entity
    end
  end

  

  # DELETE /user_programing_languages/1
  def destroy
    @user_programing_language.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_programing_language
      @user_programing_language = UserProgramingLanguage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_programing_language_params
      params.require(:user_programing_language).permit(:user_id, :programing_language_id)
    end
end
