# Special Pythagorean triplet
# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# 一个毕达哥拉斯三元组是一个包含三个自然数的集合，a<b<c，满足条件：

# a2 + b2 = c2
# 例如：32 + 42 = 9 + 16 = 25 = 52.

# 已知存在并且只存在一个毕达哥拉斯三元组满足条件a + b + c = 1000。

# 找出该三元组中abc的乘积
# 这个场景很适合[Prolog](http://zh.wikipedia.org/zh-cn/Prolog)

def problem
  a = b = c = 0
  for i in (100..999) do
    for j in (100..999) do
      k = 1000 - i - j

      if i**2 + j**2 == k**2
        a,b,c = i,j,k
        break
      end
    end
  end
  puts "a=#{a}, b=#{b}, c=#{c}"
  puts "a+b+c = #{a+b+c}"
  puts "a*b*c = #{a*b*c}"
end

problem
