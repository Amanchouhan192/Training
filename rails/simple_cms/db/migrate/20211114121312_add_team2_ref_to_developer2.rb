class AddTeam2RefToDeveloper2 < ActiveRecord::Migration[6.1]
  def change
    add_reference :developer2s,:team2,foreign_key:true
  end
end
