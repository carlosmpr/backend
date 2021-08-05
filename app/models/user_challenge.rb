class UserChallenge < ApplicationRecord
    belongs_to :user 
    belongs_to :code_challenge

   
end
