class Post < ApplicationRecord
    #belongs to both author and Categories.
    belongs_to:author ,optional: true

    #post.authorr // read the author that post belongs to
    #post.authorr // set the author that post belongs to
    belongs_to:category,optional: true
end

=begin
at line 3 and 7 


3

I found out a solution to the problem "Validation failed: Class must exist" and it's better than use:

belongs_to :city, optional: true

    4.1.2.11 :optional

    If you set the :optional option to true, then the presence of the associated object won't be validated. By default, this option is set to false.

=end