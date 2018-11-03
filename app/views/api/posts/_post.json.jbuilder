json.extract! post, :id, :comment, :text, :cr_type, :user_id, :advertiser_id, :media_id, :created_at, :updated_at
json.url post_url(post, format: :json)
