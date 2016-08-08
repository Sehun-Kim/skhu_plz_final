json.array!(@post_ps) do |post_p|
  json.extract! post_p, :id, :title, :description
  json.url post_p_url(post_p, format: :json)
end
