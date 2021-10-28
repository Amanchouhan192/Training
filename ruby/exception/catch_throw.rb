def promptAndGet(prompt)
  print prompt
  res = readline.chomp
  throw :quitRequested if res == "!"
  return res
end

catch :quitRequested do
  name = promptAndGet("Name: ")
  age  = promptAndGet("Age: ")
  sex  = promptAndGet("Sex: ")
  #..
  # process information
end
promptAndGet("Name:")

=begin
output:

Name: Aman
Age: 23
Sex: Male
Name:Ruby n Rails

=end
