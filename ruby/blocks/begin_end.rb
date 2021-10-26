BEGIN {
  # begin block code
  puts "BEGIN code block"
}
END {
  
  #END block code
  puts "END code block"
  
}

#MAIN block code
puts "MAIN code block"


=begin
output :

BEGIN code block
MAIN code block
END code block

=end
