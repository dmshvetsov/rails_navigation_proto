json.array!(@sections) do |section|
  json.extract! section, :id, :parent_id, :title, :slug, :position
  json.url section_url(section, format: :json)
end
