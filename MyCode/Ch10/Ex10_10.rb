#!/usr/bin/env ruby
# Ex10_10.rb

def slope(f)
  return lambda do |x|
    (f[x+1].to_f - f[x-1].to_f) / 2.0
  end
end

procs = {
  :flat   => lambda { |x| 5 },
  :linear => lambda { |x| x },
  :square => lambda { |x| x * x },
}

0.upto(9) do |x|
  procs.keys.each do |proc_sym|
    current_proc = procs[proc_sym]
    puts "#{x}: #{current_proc.call(x)} | #{slope(current_proc).call(x)}"
  end
end
