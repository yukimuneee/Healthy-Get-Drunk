json.array!(@posts) do |post|
  json.extract! post, :id, :expence
  json.start post.date     
  json.url post_url(post, format: :html) 
end