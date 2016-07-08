#!/usr/bin/ruby

# this is a comment

# this is a simple loo with while
$i = 0
$num = 5
begin
   puts("Inside the loop i = #$i" )
   $i +=1
end while $i < $num


# this is a until example

$a = 0
$n = 5

until $a >$n do
  puts("inside loop a = #$a")
  $a += 1;
end


# and an example with FOR

for t in 0..5
  puts "this is a loop with for #{t}"
end
