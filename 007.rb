# 10001st prime
# Published on Friday, 28th December 2001, 06:00 pm; Solved by 159414
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10001st prime number?

# 前六个质数是2,3,5,7,11和13，其中第6个是13.

# 第10001个质数是多少

def is_prime? num
  #优化
  #偶质数只有2
  #只要一个数能被自己之前的所有质数整除，这个数就是质数
  return false if num < 0

  temp = Math.sqrt(num).to_i
  2.upto(temp) do |n|
    return false if num %n == 0
  end
  true
end

def take_prime step

  i = index = 0
  while true do
    i += 1
    if is_prime? i
      index += 1
    end

    break if index == step + 1

  end

  puts i
end

take_prime(10001)
