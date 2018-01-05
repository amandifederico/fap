class Troop < ApplicationRecord
  has_many :troop_details, inverse_of: :troop
  accepts_nested_attributes_for :troop_details, :reject_if => proc { |attributes| attributes['animal_id'].blank? }
  belongs_to :turn
  belongs_to :provider
  belongs_to :city
  belongs_to :transport
  
  validates :provider, presence: true
  

  def to_s
  	dte.to_s + " ( " + provider.to_s + " )"
  end

end
