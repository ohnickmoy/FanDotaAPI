class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :logo_url
      t.integer :wins
      t.integer :loses

      t.timestamps
    end
  end
end
