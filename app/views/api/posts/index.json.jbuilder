json.set! :posts do
  json.array! @posts do |post|
    json.extract! post, :id, :content, :cr_type, :user_id, :advertiser_id, :media_id, :created_at, :updated_at
  end
end
