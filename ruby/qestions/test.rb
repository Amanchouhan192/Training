def sample(*test)
  puts "The number of parameter is #{test.length}"
  for i in 0..test.length
    puts "the parameter are #{test[i]}"
  end
end

sample "Zara","6","F"
sample "Mac","36","M","MCA"
