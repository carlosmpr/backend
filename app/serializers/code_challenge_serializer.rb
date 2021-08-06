class CodeChallengeSerializer < ActiveModel::Serializer
  attributes :id, :name, :solution, :description , :instructions, :difficulty
 
end
