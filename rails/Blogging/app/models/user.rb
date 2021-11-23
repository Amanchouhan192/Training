class User < ApplicationRecord
   # has_secure_password
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,message: "mist be a valid email address", on: :create }

end
