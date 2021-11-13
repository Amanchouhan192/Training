class CreateProjectAssigneds < ActiveRecord::Migration[6.1]
  def change
    create_table :project_assigneds do |t|
      t.integer:project_id 
      t.integer:eid

      t.timestamps
    end
  end
end
