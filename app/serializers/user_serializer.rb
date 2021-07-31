class UserSerializer < ActiveModel::Serializer
  attributes :name, :email, :github , :image , :phone
end
