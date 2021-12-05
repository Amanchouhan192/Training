class User < ApplicationRecord
  validates :name, :email, presence: true 
  validates :email, uniqueness: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,message: "must be a valid email address", on: :create }
  validates_format_of :phone, :with =>  /\d[0-9]\)*\z/ , :message => "Only positive number without spaces are allowed"
  validates :phone,:presence => true,:numericality => true, :length => { :minimum => 10, :maximum => 10 }
  #validates :password,length: { in: 6..10}
  validates :password, :confirmation => true, :length => { in: 6..10}
  validates :password_confirmation, presence: true
  
end
