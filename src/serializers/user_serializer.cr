class UserSerializer < BaseSerializer
  def initialize(@user : User)
  end

  def render
    {email: @user.email, name: @user.name}
  end
end
