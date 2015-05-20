class SpellSerializer < ActiveModel::Serializer
  attributes :id, :mana_cost
  has_one :hero
end
