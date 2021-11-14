class AddTeam1RefToDeveloper1 < ActiveRecord::Migration[6.1]
  def change
    add_reference :developer1s,:team1,foreign_key:true
  end
end
