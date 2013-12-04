json.array!(@authors) do |author|
  json.extract! author, :id, :fullname
  json.url author_url(author, format: :json)
end
