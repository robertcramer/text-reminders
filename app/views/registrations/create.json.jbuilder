json.user do
  json.id @user.id
  json.email @user.email
  json.name @user.name
  json.auth_token @user.auth_token
end