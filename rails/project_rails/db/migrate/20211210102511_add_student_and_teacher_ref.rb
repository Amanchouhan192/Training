class AddStudentAndTeacherRef < ActiveRecord::Migration[6.1]
  def change
    add_reference :student_teachers,:student,foreign_key: true
    add_reference :student_teachers,:teacher,foreign_key: true

  end
end
