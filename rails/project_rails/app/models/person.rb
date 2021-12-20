class Person < ApplicationRecord
    #validates :name  , :email, :phone, presence: { strict: true }
    validates :name  , :email, :phone, presence: true

    #validates :address, absence: true

    validates :agreement, acceptance: true
    validates :email, uniqueness: true, on: :create 
    validates :email, format: { with: /[A-Za-z0-9\-\_\.]+[@]gmail+[\.][A-Za-z]{2,3}/,
    message: "must be a valid email address Only @gmail.com is valid" }
    
    validates :email, confirmation: true
    validates :email_confirmation, presence: true

    validates :address, exclusion: { in: %w(Mumbai Gaziabad Assam Kerala),
    message: "%{value} is reserved." }

    validates :address, inclusion: { in: %w(Delhi Faridabad Punjab Gurugram),
    message: "%{value} is not from Places Delhi Faridabad Punjab Gurugram." }

    validates :phone , :length => { :maximum => 10 ,:minimum => 10}
    validates_format_of :phone, :with =>  /\d[0-9]\)*\z/ , :message => "Only positive number without spaces are allowed"

    validates :address, inclusion: { in: %w(Delhi Faridabad Punjab Gurugram),
    message: "%{value} is not from Places Delhi Faridabad Punjab Gurugram." }, allow_blank: true


    validates :card_number , :length => { :maximum => 10 ,:minimum => 10}
    validates :payment_type, inclusion: { in: %w(card netbanking bhim gpay phonepay),
    message: "%{value} is not from card netbanking bhim gpay phonepay" }

    validates :card_number, presence: true , if: :paid_with_card? 

    def paid_with_card?
        payment_type == "card"
    end

    validate :age_validation_custom
    def age_validation_custom
    if validates_numericality_of :age, :greater_than_or_equal_to => 15 
       validates_numericality_of :age, :less_than => 100
    end
  end
end
