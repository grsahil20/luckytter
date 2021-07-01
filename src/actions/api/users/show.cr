class Api::SignIns::Create < ApiAction
  include Api::Auth::SkipRequireAuthToken

  get "/api/users/:user_id" do
    user = UserQuery.find user_id
    json UserSerializer.new(user)
  end
end
