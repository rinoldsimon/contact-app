json.array!(@infos) do |info|
  json.extract! info, :id, :user_id, :about_you, :education, :skills, :hometown, :email, :phone_no, :dob, :religion, :gender, :languages
  json.url info_url(info, format: :json)
end
