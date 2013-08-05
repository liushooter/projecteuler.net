# Largest palindrome product

# Published on Saturday, 17th November 2001, 02:00 am; Solved by 170448
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

# 找出由两个三位数乘积构成的回文。

# 一个回文数指的是从左向右和从右向左读都一样的数字。
# 最大的由两个两位数乘积构成的回文数是9009 = 91 * 99.

# 找出最大的由2个三位数乘积构成的回文数。

 def palindrome left_num,right_num
  left_num +=1
  right_num -=1
  result = 0
  right_num.downto(left_num) do |i|
    i.downto(left_num) do |j|
      temp = i*j
      result = temp if temp > result &&temp == temp.to_s.reverse.to_i
    end
  end

  puts result
 end

palindrome 100,1000