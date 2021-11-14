class AddTeamRefToSoftwareEngr < ActiveRecord::Migration[6.1]
  def change
    add_reference :software_engineers,:team,foreign_key:true
  end
end
