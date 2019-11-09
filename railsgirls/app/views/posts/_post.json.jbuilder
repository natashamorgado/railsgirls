json.extract! post, :id, :title, :text, :author, :created_date, :published_date, :created_at, :updated_at
json.url post_url(post, format: :json)
