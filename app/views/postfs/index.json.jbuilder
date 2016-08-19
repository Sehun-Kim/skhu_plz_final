json.array!(@postfs) do |postf|
  json.extract! postf, :id, :title, :content
  json.url postf_url(postf, format: :json)
end
