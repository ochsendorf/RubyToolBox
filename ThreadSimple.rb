#!/usr/bin/ruby

# this sample is to show how thread works


def writeStr
  count=0
  while count <= 4
    puts "writeStr at: #{Time.now}"
    sleep(2)
    count=count+1
  end
end

def writeStr2
  count2=0
  while count2 <= 4
    puts "whiteStr2 at: #{Time.now}"
    sleep(3)
    count2=count2+1
  end
end

puts "starting at #{Time.now}"
t1 = Thread.new{writeStr()}
t2 = Thread.new{writeStr2()}
t1.join
t2.join
puts "ends at #{Time.now}"
