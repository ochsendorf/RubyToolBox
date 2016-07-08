#!/usr/bin/ruby

# this exercise is to iterate the files in a local directory
# count the number of files, print this number, create a new one
# write the number of files in this new file, create a directory
# name temp and move this new file there.

require 'fileutils'

class Exercise

def doStuff
  puts("we like logs")
  counter=0
  
  # check number of files here
    Dir.foreach('.') do |item|
    next if item == '.' or item == '..' or item == '.git'
    counter += 1
    # puts(item)
    # puts(counter)
  end

  puts("counter says #{counter}")

  # now we create a file
  out_file = File.new("exfile1.txt","w") 
  out_file.puts(counter)
  out_file.close

  # directory

  if not File.exists?('dirdir')
    puts("no dir found, creating then")
    out_dir = Dir.mkdir("dirdir")
  end

  # dir now exists
  if File.exists?('exfile1.txt')
    puts("file is there")
    FileUtils.mv 'exfile1.txt', './dirdir/'
  end

end
end

g = Exercise.new
g.doStuff
