require './libc'

module Libc

  describe Libc do
  
    describe "::malloc" do
      it "can allocate memory" do
        expect(buffer=Libc.malloc(12)).not_to eq(nil)
        Libc.free(buffer)
      end
      it "shall return 0 when out of memory" do
        expect(buffer=Libc.malloc(4200000000)).to eq(nil)
        Libc.free(buffer)
      end
    end
    
    describe "::free" do
      buffer=Libc.malloc(13)
      it "can release allocated memory" do
        Libc.free(buffer)
        # actually, this is a pretty stupid method to test :(
      end
      it "will do nothing when pointer is invalid" do
        Libc.free(nil)
        # also not the best candidate for testing
      end
    end
    
    describe "::fopen" do
      it "can open a file for reading" do
        s = "enjoy\nthe new\nday\n"
        name = "_tmp_.txt"
        f = File.new(name, "w")
        f.write(s)
        f.close 
        buffer=Libc.malloc(s.length)
        f = Libc.fopen(name, "r")
        Libc.fread(buffer, 0, s.length, f)
        # delete file
      end
      it "can be opened for writing"
    end
    
    describe "::fread" do
      it "can read from a file"
    end
    
    describe "::fwrite" do
      it "can be write to a file"
    end
    
    describe "::fclose" do
      it "can close a file"
    end
    
  end
  
end