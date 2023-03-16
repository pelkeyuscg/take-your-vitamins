json.extract! pill, :vitamin_id, :owner_id, :brand,  :description, :ingredients, :quantity, :upc, :order_more, :pill_takens_count, :created_at, :updated_at  

json.url pill_url(pill, format: :json)
