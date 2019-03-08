#!/usr/bin/ruby -w 

#1.array << item 在数组后增加元素
arr = Array(0..2)
other = Array(3..5)
result = arr << other
#最后的输出结果为：[0,1,2,[3,4,5]]
puts "#{result}"


#2.array + other 返回一个新的数组，新数组通过连接两个数组产生第三个数组创建的。
arr = Array(1..2)
other = Array(3..5) 
result = arr + other
#输出：[1, 2, 3, 4, 5]
puts "#{result}"


#3.array - other_array
#返回一个新的数组，新数组是从初始数组中移除了在 other_array 中出现的项的副本。
arr = Array(1..3)
other = Array(3..5)
result = arr - other
#输出：[1, 2]
puts "#{result}"


#4.array | other_array
#通过把 other_array 加入 array 中，移除重复项，返回一个新的数组。
arr = Array(1..2)
other = Array.[](2,2,2,3)
result = arr | other
#输出：[1, 2, 3]
puts "#{result}"


#5.arr <=> other_arr
#如果数组小于、等于或大于 other_array，则返回一个整数（-1、 0 或 +1）。
arr = Array.[](1,3)
other_arr = Array.[](0,4)
result = arr <=> other_arr
#输出：1
puts "#{result}"


#6.array.abbrev(pattern = nil)
#为 self 中的字符串计算明确的缩写集合。如果传递一个模式或一个字符串，只考虑当字符串匹配模式或者以该字符串开始时的情况。
arr = Array.[](1, 2)

#7.array.at(index)
#返回索引为 index 的元素。一个负值索引从 self 的末尾开始计数。如果索引超出范围则返回 nil。
arr = Array.[](1, 2)
puts "#{arr.at(1)}"

#	8.array.clear
#从数组中移除所有的元素。
arr = Array.[](1, 2)
#输出:[1,2]
puts "#{arr}"
arr.clear
#输出空字符串
puts "#{arr}"

#9.array.collect { |item| block } [or]
#array.map { |item| block }
#为 self 中的每个元素调用一次 block。创建一个新的数组，包含 block 返回的值。


#10. array.collect { |item| block } [or]
#array.map { |item| block }
#为 self 中的每个元素调用一次 block。创建一个新的数组，包含 block 返回的值。


#11.	array.collect! { |item| block } [or]
#array.map! { |item| block }
#为 self 中的每个元素调用一次 block，把元素替换为 block 返回的值。

#12. array.compact
#返回 self 的副本，移除了所有的 nil 元素。
# arr = Array.[](nil,1,3,54)
# puts "#{arr}"
# arr.compact
# puts "#{arr}"