
#Multiples of 3 and 5
#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
#The sum of these multiples is 23.

#Find the sum of all the multiples of 3 or 5 below 1000.

#找出1000以下自然数中3和5的倍数之和

def sum_method range
  temp = range.to_i - 1
  arr = []
  sum = 0
  (1..temp).each{ |r| arr << r if r%5 == 0 || r%3 == 0 }

  sum = arr.inject(:+)
  puts "sum = #{sum}"
end

sum_method(1000)