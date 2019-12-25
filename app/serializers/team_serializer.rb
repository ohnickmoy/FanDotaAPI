class TeamSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :tag, :logo_url, :wins, :losses
end
