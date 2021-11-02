=begin
tag:medium
Scoring System

Andy, Ben and Charlotte are playing a board game. The three of them decided to come up with a new scoring system. A player's first initial ("A", "B" or "C") denotes that player scoring a single point. Given a string of capital letters, return an array of the players' scores.

For instance, if ABBACCCCAC is written when the game is over, then Andy scored 3 points, Ben scored 2 points, and Charlotte scored 5 points, since there are 3 instances of letter A, 2 instances of letter B, and 5 instances of letter C. So the array [3, 2, 5] should be returned.
Examples

calculate_scores("A") ➞ [1, 0, 0]

calculate_scores("ABC") ➞ [1, 1, 1]

calculate_scores("ABCBACC") ➞ [2, 2, 3]

Notes

If given an empty string as an input, return [0, 0, 0].


=end
def calculate_scores(str)
  arr = []
  andy = str.count "A"
  ben  = str.count "B"
  charlotte = str.count "C"
  arr.push(andy)
  arr.push(ben)
  arr.push(charlotte)

  puts arr
  
end

str = String.new
calculate_scores("A")
calculate_scores("ABC")
calculate_scores("ABCBACC")
=begin
output:

1
0
0
1
1
1
2
2
3

=end
