#!/usr/bin/ruby -w 

#array << item 在数组后增加元素
arr = Array(0..2)
other = Array(3..5)
result = arr << other
#最后的输出结果为：[0,1,2,[3,4,5]]
puts "#{result}"


#array + other 返回一个新的数组，新数组通过连接两个数组产生第三个数组创建的。
arr = Array(1..2)
other = Array(3..5) 
result = arr + other
#输出：[1, 2, 3, 4, 5]
puts "#{result}"


#array - other_array
#返回一个新的数组，新数组是从初始数组中移除了在 other_array 中出现的项的副本。
arr = Array(1..3)
other = Array(3..5)
result = arr - other
#输出：[1, 2]
puts "#{result}"


#array | other_array
#通过把 other_array 加入 array 中，移除重复项，返回一个新的数组。
arr = Array(1..2)
other = Array.[](2,2,2,3)
result = arr | other
#输出：[1, 2, 3]
puts "#{result}"


#arr <=> other_arr
#如果数组小于、等于或大于 other_array，则返回一个整数（-1、 0 或 +1）。
arr = Array.[](1,3)
other_arr = Array.[](0,4)
result = arr <=> other_arr
#输出：1
puts "#{result}"
