class HeroSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :base_movement, :base_str, :base_int, :base_agi, :str_per_level, :int_per_level, :agi_per_level, :base_min_damage, :base_max_damage, :base_armor, :day_sight_range, :night_sight_range, :attack_range, :missle_speed
  has_many :spells
end
