class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username, :token
  has_many :teams

  attribute :token do |object|
    JWT.encode({user_id: object.id}, `#{ENV[JWT_KEY]}`)
  end
end
