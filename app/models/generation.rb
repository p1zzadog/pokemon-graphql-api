class Generation < ApplicationRecord
  has_many :abilities, foreign_key: :generation_id
  has_many :generation_names, foreign_key: :generation_id
  has_many :item_game_indices, foreign_key: :generation_id

  belongs_to :region, foreign_key: :main_region_id
end
