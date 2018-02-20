class Troop < ApplicationRecord
  has_many :troop_details, inverse_of: :troop
  accepts_nested_attributes_for :troop_details, :reject_if => proc { |attributes| attributes['animal_id'].blank? }
  belongs_to :turn
  belongs_to :provider
  belongs_to :city
  belongs_to :transport
  belongs_to :driver
  

  validates :dte, presence: true
  validates :arrival_date, presence: true
  validates :arrival_time, presence: true
  validates :troop_number, presence: true
  validates :cargo_date, presence: true
  validates :expiration_date, presence: true
  validates :seal_number, presence: true
  
  
    
  def to_s
  	dte.to_s + " ( " + provider.to_s + " )"
  end

end
