#!/usr/bin/ruby

# this is an exercise to access databases using ruby
# in this case, we are going to use mysql
# the sq to create the tables are in the sql directory

require 'rubygems'
require 'active_record'
array_input = ARGV

ActiveRecord::Base.establish_connection(
 :adapter => "mysql",
 :host => "localhost",
 :username => "",
 :password => "",
 :database => "Books"
)

class Books < ActiveRecord::Base
end

Books.create(:name_book => array_input[0], :name_author => array_input[1])

# cc = Books.count
# puts cc

Books.all.each do | book |
  puts book['id_book'].to_s + " " + book['name_book'] 
end
rs = Books.find_by_sql("select * from books")

