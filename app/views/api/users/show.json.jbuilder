json.Users @users.each do |user|
  json.ID user.full_name
  json.Name user.email
  json.Photo  user.photo  
end