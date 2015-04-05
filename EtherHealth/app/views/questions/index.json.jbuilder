json.array!(@questions) do |question|
  json.extract! question, :id, :discription, :tag, :user_id
  json.url question_url(question, format: :json)
end
