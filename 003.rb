# Largest prime factor
# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

# 600851475143 的最大质因数是多少
#[求质数算法的N种境界](http://blog.csdn.net/program_think/article/details/7032600)
#[How do I generate the first n prime numbers](http://stackoverflow.com/questions/11673968/how-do-i-generate-the-first-n-prime-numbers)

  def prime_division num
    result = []
    temp = Math.sqrt(num).to_i

    2.upto(temp) do |n|
      while num % n == 0
        num /= n
        result << n
      end
    end
    result << num unless num == 1
    result
    puts "result = #{result.max}"
  end

prime_division(600851475143)
