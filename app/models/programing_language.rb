class ProgramingLanguage < ApplicationRecord
    has_many :code_challenges
    has_many :groups
end
