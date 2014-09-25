#write libc.i
swig -ruby libc.i
#write extconf.rb
make
#write example program, file_io.rb
irb
require './file_io.rb'
# => true
