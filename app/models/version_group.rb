class VersionGroup < ApplicationRecord
  belongs_to :generation, foreign_key: :generation_id

  has_many :ability_changelogs, foreign_key: :changed_in_version_group_id
  has_many :ability_flavor_texts, foreign_key: :version_group_id
  has_many :encounter_slots, foreign_key: :version_group_id
  has_many :item_flavor_texts, foreign_key: :version_group_id
  has_many :machines, foreign_key: :version_group_id
  has_many :move_changelogs, foreign_key: :changed_in_version_group_id
  has_many :move_effect_changelogs, foreign_key: :changed_in_version_group_id
  has_many :move_flavor_texts, foreign_key: :version_group_id
  has_many :pokedex_version_groups, foreign_key: :version_group_id
  has_many :pokemon_forms, foreign_key: :introduced_in_version_group_id
  has_many :pokemon_moves, foreign_key: :version_group_id
  has_many :version_group_pokemon_move_methods, foreign_key: :version_group_id
  has_many :version_group_regions, foreign_key: :version_group_id
  has_many :versions, foreign_key: :version_group_id
end
