class ProgramingLangDetailSerializer < ActiveModel::Serializer
  attributes :id, :name ,:description
  has_many :code_challenges
  has_many :groups
end
