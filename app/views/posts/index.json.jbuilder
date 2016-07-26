json.array!(@posts) do |post|
  json.extract! post, :id, :title, :content, :lecture_id
  json.url post_url(post, format: :json)
end
