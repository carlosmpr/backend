class User < ApplicationRecord
    has_many :user_programing_languages
    has_many :programing_languages, through: :user_programing_languages
    has_many :user_challenges
    has_many :code_challenges, through: :user_challenges
    has_many :group_members
    has_many :groups, through: :group_members
end

