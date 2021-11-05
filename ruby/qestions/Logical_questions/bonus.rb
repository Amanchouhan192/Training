def theBonus(days)
    a=0
    bouns=0
    while(a<=days)
	if (a<=32)
	    bouns=0
	    a = a + 1
	elsif(a >=32) && (a <= 40)
	    bouns = bouns + 325
	    a = a + 1
	elsif(a>=41 && a <= 48)
	    bouns = bouns + 550
	    a = a + 1
	else
	    bouns = bouns + 600
	    a = a + 1
	end
    end
    puts "#{bouns}"
  end

print " Entert days : "
days =gets.to_i
theBonus days
