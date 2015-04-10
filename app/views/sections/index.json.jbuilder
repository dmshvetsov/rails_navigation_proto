json.array!(@sections) do |section|
  json.extract! section, :id, :description
  json.url section_url(section, format: :json)
end
