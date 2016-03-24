json.array!(@pages) do |page|
  json.extract! page, :id, :question, :notes, :upvotes
  json.url page_url(page, format: :json)
end
