json.array!(@posts) do |event|
  json.extract! post, :id, :expence
  json.start post.date     
  json.url event_url(post, format: :html) 
end