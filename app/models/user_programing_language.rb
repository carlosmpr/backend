class UserProgramingLanguage < ApplicationRecord
    belongs_to :user
    belongs_to :programing_language
end
