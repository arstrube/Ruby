require './libc'

sz = 12
f1 = Libc.fopen("./test_src.txt", "r")
f2 = Libc.fopen("./test_dst.txt", "w+")

buffer = Libc.malloc(sz)

nread = Libc.fread(buffer, 1, sz, f1)
while nread > 0
  Libc.fwrite(buffer, 1, nread, f2)
  nread = Libc.fread(buffer, 1, sz, f1)
end

Libc.fclose(f1)
Libc.fclose(f2)
Libc.free(buffer)
