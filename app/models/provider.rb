class Provider < ApplicationRecord
  belongs_to :city

  def to_s
    name
  end

end
