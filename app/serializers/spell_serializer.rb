class SpellSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :damage_type, :mana_cost
end
