class User < ApplicationRecord
  validates :name, :email, presence: true 
  #validates :name, :email, presence: { strict: true }
  validates :email, uniqueness: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,message: "must be a valid email address", on: :create }
  validates_format_of :phone, :with =>  /\d[0-9]\)*\z/ , :message => "Only positive number without spaces are allowed"
  validates :phone,:presence => true,:numericality => true, :length => { :minimum => 10, :maximum => 10 }
  validates :password, :confirmation => true, :length => { in: 6..10}
  validates :password_confirmation, presence: true

  #validation for age 
  #validates :age, numericality: { message: "%{value} seems wrong must be an positive integer" }
  #validates_numericality_of :age, :greater_than_or_equal_to => 15 
  #validates_numericality_of :age, :less_than => 100
  #exclusion validation
  validates :email, exclusion: { in: %w[z@berylsystems.com] }

  #format
  validates :address, format: { with: /\A[a-zA-Z]+\z/,message: "only allows letters" }

  #inclusion
  validates :address, inclusion: { in: %w(delhi faridabad mumbai),message: "%{value} This state citizens are not allowed!" }
  
  validates :age, numericality: { message: "%{value} seems wrong must be an positive integer" }
  # age custom validation
  validate :age_validation_custom
  def age_validation_custom
    if validates_numericality_of :age, :greater_than_or_equal_to => 15 
       validates_numericality_of :age, :less_than => 100
    end
  end

end

