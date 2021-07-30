class ProgramingLanguagesController < ApplicationController
  before_action :set_programing_language, only: [:show, :update, :destroy]

  # GET /programing_languages
  def index
    @programing_languages = ProgramingLanguage.all

    render json: @programing_languages
  end

  # GET /programing_languages/1
  def show
    render json: @programing_language, serializer: ProgramingLangDetailSerializer
  end

  

  


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programing_language
      @programing_language = ProgramingLanguage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def programing_language_params
      params.require(:programing_language).permit(:name)
    end
end
