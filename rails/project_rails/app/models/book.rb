class Book < ApplicationRecord
     belongs_to :author
     validates :title , presence: true
     validates :title , uniqueness: { message: "Book Title already exist!"}

     #Active Query
     scope :name_by_id, -> { where(id:2) }
     #-> it will print all the books which are out of stock
     scope :in_print, -> { where(in_print: false) }
     scope :out_of_print, -> { where(out_of_print: true) } 
   
     #chainable
     scope :out_of_print_and_expensive, -> { out_of_print.where("price > 500") }
     #passing an arguments
     scope :costs_more_than_equal_to, ->(amount) { where("price >= ?", amount) }

     #argument in defination
     def self.costs_less_than(amount)
        where("price < ?", amount)
     end

     #scope with time
     scope :published_before, ->(time) { where("created_at < ?", time) if time.present? }

     #scope default
     #default_scope { where(out_of_print: false) }

     scope :old, -> { where('updated_at < ?', Date.current)}
    
end
