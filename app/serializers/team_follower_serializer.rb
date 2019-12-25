class TeamFollowerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :team_id, :user_id
end
