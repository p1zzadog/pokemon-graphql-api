class ContestEffect < ApplicationRecord
  has_many :contest_effect_proses, foreign_key: :contest_effect_id
  has_many :moves, foreign_key: :contest_effect_id
end
