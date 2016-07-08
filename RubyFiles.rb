!#/bin/env ruby

class RubyFiles

def createFile(name = "text.txt")
  out_file = File.new(name,"w")
  out_file.puts("this is a content, happy?")
  out_file.puts("sarcasm")
  out_file.close
end

end



g = RubyFiles.new()
g.createFile
