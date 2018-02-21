class Type < ApplicationRecord
  belongs_to :animal_type
  def to_s
    name
  end

end
