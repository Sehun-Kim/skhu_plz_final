json.array!(@postus) do |postu|
  json.extract! postu, :id, :title, :content
  json.url postu_url(postu, format: :json)
end
