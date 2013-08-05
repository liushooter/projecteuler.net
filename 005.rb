# Smallest multiple

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
# 求能被1-20整除的最小的数

#最小公倍数 lcm

require 'rational'

def lcm(args)
  x,m = 1
  max = args.max
  args.each do |n|
    m = n + 1
    x,n = (x.lcm m),n
      break if m >= max
  end

  puts "lcm = #{x}"

end

lcm((1..20).to_a)