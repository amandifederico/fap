json.extract! production_detail, :id, :production_id, :type_id, :animal_id, :weight, :weight_control, :observation, :created_at, :updated_at
json.url production_detail_url(production_detail, format: :json)
