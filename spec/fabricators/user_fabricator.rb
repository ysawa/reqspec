Fabricator(:user) do
  confirmed_at Time.now
  email { "test#{sequence(:user)}@example.com" }
  password 'PASSWORD'
  password_confirmation 'PASSWORD'
end
