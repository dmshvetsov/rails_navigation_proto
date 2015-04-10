json.array!(@pages) do |page|
  json.extract! page, :id, :title, :slug, :parent_id, :position
  json.url page_url(page, format: :json)
end
