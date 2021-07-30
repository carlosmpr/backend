class ProgramingLangDetailSerializer < ActiveModel::Serializer
  attributes :id, :name 
  has_many :code_challenges
  has_many :groups
end
