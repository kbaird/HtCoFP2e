#!/usr/bin/env ruby
# Ex10_06.rb
# In Ruby. Why the hell not?

f = Proc.new do |a,b|
  lambda { |x| a[b[x]] }
end
g = lambda { |c,d| f[d,c] }

double = lambda { |x| x * 2 }
add1   = lambda { |x| x + 1 }

f2 = f[double,add1]
f3 = g[add1,double]

puts f2[5]
puts f3[5]
