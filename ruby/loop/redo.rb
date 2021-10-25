for i in 0..5
  if i<2 then
    puts"vale of local variable is #{i}"
    redo 
  end
end

=begin
output :


vale of local variable is 0
vale of local variable is 0
vale of local variable is 0
vale of local variable is 0
vale of local variable is 0
.......................... infinite loop
=end
