#!/usr/bin/ruby

# this is to run a ruby program as a service/deamon on linux
# first need to install the gem deamon like: gem install daemons  
# then a file is required to control the process and another one
# will be the program to run, in this exercise we are creating a
# fie with date in the name, like a log 

require 'daemons'


loop do
  sleep(60)
  # create file name with date
  time = Time.new
  mydate = time.year.to_s + time.month.to_s + time.day.to_s + time.hour.to_s + time.min.to_s
  out_file = File.new(mydate,"w")
  out_file.puts(mydate)
  out_file.close
end

