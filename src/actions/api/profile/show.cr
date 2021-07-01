class Api::Profile::Show < ApiAction
  get "/api/profile" do
    json UserSerializer.new(current_user)
  end
end
