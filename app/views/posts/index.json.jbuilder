json.array!(@posts) do |event|
  json.extract! post, :id, :title, :description   
  json.start post.start_date   
  json.end post.end_date   
  json.url event_url(post, format: :html) 
end