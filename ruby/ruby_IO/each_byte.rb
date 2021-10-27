newfile  = File.new("input.txt","r+")
if newfile
   newfile.syswrite("ABCDEF")
   newfile.each_byte {|ch| putc ch; putc ?. }
else
  puts "Unable to open file!"
end

=begin
output:

a.m. .w.r.i.t.t.i.n.g.
.t.e.x.t. .f.i.l.e. .f.o.r. .t.e.s.t.i.n.g. .p.u.r.p.o.s.e...

=end
