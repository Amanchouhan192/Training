class CreateTeam1s < ActiveRecord::Migration[6.1]
  def change
    create_table :team1s do |t|
      t.integer  :team_id
      t.string   :team_namer
      t.timestamps
    end
  end
end
