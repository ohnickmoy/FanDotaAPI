class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username, :token
  has_many :teams

  attribute :token do |object|
    key = ENV["JWT_KEY"]
    JWT.encode({user_id: object.id}, key)
  end
end
