json.extract! troop_detail, :id, :troop_id, :animal_id, :quantity, :fallen, :observartion, :created_at, :updated_at
json.url troop_detail_url(troop_detail, format: :json)
