json.set! :post do
  json.extract! @post, :id, :content, :cr_type, :user_id, :advertiser_id, :media_id, :created_at, :updated_at
end
