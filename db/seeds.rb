User.find_or_create_by!(email: 'admin@example.com') do |user|
  user.password = 'Password1'
  user.password_confirmation = 'Password1'
  user.role = User.roles[:admin]
end

User.find_or_create_by!(email: 'user@example.com') do |user|
  user.password = 'Password1'
  user.password_confirmation = 'Password1'
  user.role = User.roles[:user]
end