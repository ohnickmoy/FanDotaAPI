class CreateTeamFollowers < ActiveRecord::Migration[6.0]
  def change
    create_table :team_followers do |t|
      t.integer :team_id
      t.integer :user_id

      t.timestamps
    end
    
    add_index :team_followers, :team_id
    add_index :team_followers, :user_id
    add_index :team_followers, [:team_id, :user_id], unique: true
  end
end
