class TroopDetail < ApplicationRecord
  belongs_to :troop
  belongs_to :animal

  validates :id, uniqueness: true

end
