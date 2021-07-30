class ProgramingLanguage < ApplicationRecord
    has_many :code_challenges
    has_many :groups
    has_many :user_programing_languages
    has_many :users, through: :user_programing_languages
end
