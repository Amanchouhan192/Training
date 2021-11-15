class JoinStudentAndStudentsTeacherTable < ActiveRecord::Migration[6.1]
  def change
    create_table :assemblies_parts, id: false do |t|
      t.belongs_to :teacher
      t.belongs_to :student
    end
  end
end


=begin

rails g migration JoinStudentAndStudentsTeacherTable Student Teacher
Running via Spring preloader in process 13499
      invoke  active_record
      create    db/migrate/20211115104147_join_student_and_students_teacher_table.rb
=end