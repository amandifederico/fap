class RangeTroopNumber < ApplicationRecord
  belongs_to :provider
  def to_s
    min
  end
end
