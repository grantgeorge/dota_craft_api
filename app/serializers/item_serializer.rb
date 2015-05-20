class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :gold_cost
end
