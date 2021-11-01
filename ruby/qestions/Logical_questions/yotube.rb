=begin
tag:medium

YouTube Upload Count

You are given an array of dates in the format Dec 11 and a month in the format Dec as arguments. Each date represents a video that was uploaded on that day. Return the number of uploads for a given month.
Examples

upload_count(["Sept 22", "Sept 21", "Oct 15"], "Sept") ➞ 2

upload_count(["Sept 22", "Sept 21", "Oct 15"], "Oct") ➞ 1

Notes

If you only pay attention to the month and ignore the day, the challenge will become easier.



=end
def upload_count (dates,month)
  count = 0
  dates.each{ |dates|
    if (dates.include?month)
      count+=1
    end
  }
  puts count
  #date = dates.count(month)
  #puts date
end


dates = String.new
month = String.new
upload_count(["Sept 22", "Sept 21", "Oct 15"], "Sept")

upload_count(["Sept 22", "Sept 21", "Oct 15"], "Oct") 


=begin
output:
2
1

=end
