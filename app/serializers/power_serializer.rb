class PowerSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  # has_many :hero_powers
  # has_many :heroes, through: :hero_power
end
