class AddJoinTableStudentAndTeacher < ActiveRecord::Migration[6.1]
  def change
    create_join_table :Students,:Teachers do |t|
      t.index [:stud_id,:teacher_id]
      t.index [:teacher_id,stud_id]
    end
  end
end
