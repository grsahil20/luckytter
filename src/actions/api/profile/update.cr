class Api::Profile::Show < ApiAction
  put "/api/profile" do
    SaveUser.update(current_user, params) do |operation, upadated_user|
      json UserSerializer.new(current_user)
    end
  end
end
