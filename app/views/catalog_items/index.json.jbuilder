json.array!(@catalog_items) do |catalog_item|
  json.extract! catalog_item, :id, :title, :slug, :body, :price, :position, :section_id
  json.url catalog_item_url(catalog_item, format: :json)
end
