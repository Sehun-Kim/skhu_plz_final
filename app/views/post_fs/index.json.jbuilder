json.array!(@post_fs) do |post_f|
  json.extract! post_f, :id, :title, :description
  json.url post_f_url(post_f, format: :json)
end
