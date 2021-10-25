for i in 0..10
	begin
		puts "VALUE OF i #{i}"
		raise if i >=9
		rescue
		retry
	end
end

=begin
output: 

infinite loop
=end
