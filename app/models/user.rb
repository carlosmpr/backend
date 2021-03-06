class User < ApplicationRecord
    has_secure_password
    has_many :user_challenges, dependent: :destroy
    has_many :code_challenges, through: :user_challenges
    has_many :programing_languages, through: :user_challenges
    has_many :group_members, dependent: :destroy
    has_many :groups, through: :group_members


    validates :email, presence: true
    validates :email, uniqueness: { case_sensitive: true }
    def self.validateUser(token)
        begin
        hmac_secret = 'my$ecretK3y'
        decoded_token = JWT.decode token, hmac_secret, true, { algorithm: 'HS256' }
        user = decoded_token[0]
        User.find_by(email: user["email"])
        user
        rescue => exception
            false
        end

    end
end

