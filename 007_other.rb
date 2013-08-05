# ruby标准库提供了prime
# Prime.take(10) => [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
# Prime.take_while {|p| p < 10 } => [2, 3, 5, 7]
# Prime.prime?(19) => true

require 'prime'

puts Prime.take(10001).max