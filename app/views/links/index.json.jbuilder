json.array!(@links) do |link|
  json.extract! link, :id, :given_url, :short_path, :clicks, :snapshot, :title
  json.url link_url(link, format: :json)
end
