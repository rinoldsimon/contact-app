json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :id, :name, :email, :comments
  json.url feedback_url(feedback, format: :json)
end
