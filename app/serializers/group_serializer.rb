class GroupSerializer < ActiveModel::Serializer
  attributes :id ,:name
  belongs_to :programing_language
end
