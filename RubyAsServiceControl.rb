#!/usr/bin/ruby

# this is to run a ruby program as a service/deamon on linux
# first need to install the gem deamon like: gem install daemons  
# then a file is required to control the process and another one
# will be the program to run, in this exercise we are creating a
# fie with date in the name, like a log 

require 'daemons'

Daemons.run('RubyAsService.rb')
