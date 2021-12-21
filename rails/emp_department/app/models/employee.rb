class Employee < ApplicationRecord
  #Associations
  belongs_to :department

  validates :name, :email, presence: true 
  validates :name, format: { with: /\A[a-zA-Z]+\z/,message: "Should Be Valid Name" ,length: {minimum: 4}}

  validates :email, uniqueness: true
  #validates :emp_id, uniqueness: {:message => " Id is already been taken!"}

  validates :email, format: { with: /^[\w.+\-]+@gmail.com$/,:multiline => true ,message: "must be a valid email address", on: :create }

  validates_format_of :salary, :with =>  /\d[0-9]\)*\z/ , :message => "Only positive number without spaces are allowed"

  validates_numericality_of :salary, :greater_than => 5000 
  
end
