class UserChallengeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :code_challenge_id
end
