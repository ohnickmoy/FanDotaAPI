class TeamFollowerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :team_id, :user_id
  belongs_to :user
  belongs_to :team
end
