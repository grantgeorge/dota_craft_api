FactoryGirl.define do
  factory :hero do
    name { Faker::Name.name }
    description { Faker::Lorem.sentence }
    base_movement 1
    base_str 1
    base_int 1
    base_agi 1
    str_per_level 1
    int_per_level 1
    agi_per_level 1
    base_min_damage 1
    base_max_damage 1
    base_armor 1
    day_sight_range 1
    night_sight_range 1
    attack_range 1
    missle_speed 1
  end

end
