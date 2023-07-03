class HeroSerializer < ActiveModel::Serializer
  attributes :id, :name, :super_name, :powers
  has_many :powers
end
