#!/usr/bin/ruby -w 

#1.array << item 在数组后增加元素
puts "array<< item "
arr = Array(0..2)
other = Array(3..5)
result = arr << other
#最后的输出结果为：[0,1,2,[3,4,5]]
puts "#{result}"


#2.array + other 返回一个新的数组，新数组通过连接两个数组产生第三个数组创建的。
puts "array + other "
arr = Array(1..2)
other = Array(3..5) 
result = arr + other
#输出：[1, 2, 3, 4, 5]
puts "#{result}"


#3.array - other_array
#返回一个新的数组，新数组是从初始数组中移除了在 other_array 中出现的项的副本。
puts "array - other_array"
arr = Array(1..3)
other = Array(3..5)
result = arr - other
#输出：[1, 2]
puts "#{result}"


#4.array | other_array
#通过把 other_array 加入 array 中，移除重复项，返回一个新的数组。
puts "array | other_array"
arr = Array(1..2)
other = Array.[](2,2,2,3)
result = arr | other
#输出：[1, 2, 3]
puts "#{result}"


#5.arr <=> other_arr
#如果数组小于、等于或大于 other_array，则返回一个整数（-1、 0 或 +1）。
puts "arr <=> other_arr"
arr = Array.[](1,3)
other_arr = Array.[](0,4)
result = arr <=> other_arr
#输出：1
puts "#{result}"


#6.array.abbrev(pattern = nil)
#为 self 中的字符串计算明确的缩写集合。如果传递一个模式或一个字符串，只考虑当字符串匹配模式或者以该字符串开始时的情况。
puts "array.abbrev(pattern = nil)"
arr = Array.[](1, 2)

#7.array.at(index)
#返回索引为 index 的元素。一个负值索引从 self 的末尾开始计数。如果索引超出范围则返回 nil。
puts "array.at(index)"
arr = Array.[](1, 2)
puts "#{arr.at(1)}"

#	8.array.clear
#从数组中移除所有的元素。
puts "array.clear"
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
puts "array.compact"
# arr = Array.[](nil,1,3,54)
# puts "#{arr}"
# arr.compact
# puts "#{arr}"


#13. array.concat(other_array)
#追加 other_array 中的元素到 self 中。
puts "array.concat(other_array)"
arr = Array(1..2)
other = Array(3..5)
result = arr.concat(other)
#输出：[1, 2, 3, 4, 5]
puts "#{result}"


#14.array.delete(obj) [or]
#array.delete(obj) { block }
#从 self 中删除等于 obj 的项。如果未找到相等项，则返回 nil。如果未找到相等项且给出了可选的代码 block，则返回 block 的结果。
puts "array.delete(obj) "
arr = Array(1..2)
#输出：[1, 2]
puts "#{arr}"
arr.delete(1)
#输出：[2]
puts "#{arr}"
#根据对应的index进行删除
arr.delete_at(0)
#输出：[]
puts "#{arr}"


#15.array.uniq
#将数组中的元素去重，当然x.uniq!这样加个叹号，表示毁坏性方法，不返回而是直接改变x目标自身。
puts "array.uniq"
arr = Array.[](1, 2, 2, 2, 2, 2, 3)
#输出：[1, 2, 3]
puts "#{arr.uniq}"


#16.  x.first 获取第一个元素，x.last获取最后一个元素
#  x[index]根据下标获取数组的元素，当index为负数的时候，访问的是倒数的第几个数组元素
puts "16.数组元素访问"
arr = Array.[](1, 2, 3, 4, 5, 6)
#输出：1
puts "#{arr.first}"
#输出：3
puts "#{arr.last}"
#输出：[1, 2, 3]
puts "#{arr[1]}"
#输出：[1, 2, 3]
puts "#{arr[-1]}"

#17.array.empty?
# 判断数组不存在任何元素，如果数组本身没有包含元素，则返回 true。
puts "17.判断数组中是否为空"
arr = Array.[]()
#输出：true
puts "#{arr.empty?}"

#18.array.each { |item| block }
# 遍历数组
puts "18.数组元素的遍历"
arr = Array.[](1, 2, 3, 4, 5, 6)
arr.each do |i|
  puts i
end


#19.数组的push、pop、shift、unshift操作
#push 表示添加元素到数组尾部
#pop 方法表示从尾部删除元素
#shift 表示从首部删除元素
#unshift 表示从首部添加元素
puts "19.数组的push、pop、shift/unshift操作"
arr = Array.[](1, 2, 3, 4, 5, 6)
arr.push(7)
#输出：[1, 2, 3, 4, 5, 6, 7]
puts "#{arr}"
#输出：7
puts "#{arr.pop}"
#输出：1
puts "#{arr.shift}"
arr.unshift(0)
#输出：[0, 2, 3, 4, 5, 6, 7]
puts "#{arr}"


#20.数组的insert、delete和delete_at方法可以删除对应的元素。
#insert可以在指定位置插入元素
#delete 删除值相同的元素
#delet_at 按照所给的下标删除对应元素,当下标为负数的时候删除倒数的元素
puts "数组的insert、delete和delete_at方法可以删除对应的元素"
arr = Array.[](1, 2, 2, 2, 3)
#输出：[1, 2, 2, 2, 3]
puts "#{arr}"
arr.delete(2)
#输出：[1, 3]
puts "#{arr}"
#根据对应的index进行删除
arr.delete_at(-1)
#输出：[1]
puts "#{arr}"

#21.数组的类型转换
#to_i将字符串转为数字
puts "数组的类型转化"
str = "1 2 3 4"
result = str.split(/ /).map { |s| s.to_i }
#输出：[1, 2, 3, 4]
puts "#{result}"


#22.判断数组是否存在某个元素
#arr.include?
puts "判断数组是否存在某个元素"
arr = Array.[](1, 2, 2, 2, 3)
#输出：true
puts "#{arr.include? 1}"


#23.在数组中查找元素,find ,select
#find 找出符合条件的一个元素，返回该元素。
#select找出符合条件的所有元素，返回结果也是数组。
puts "在数组中查找元素,find ,select"
arr = Array.[](1, 2, 2, 2, 3)
result = arr.find do |s|
  s == 2
end
#输出：2
puts "#{result}"
result = arr.select do |s|
  s == 2
end
#输出：[2, 2, 2]
puts "#{result}"


#24. 数组排序
#arr.sort 正序排序
#arr.sort.reverse 倒叙排序
#array.reverse!  将数组元素顺序逆转
#arr.sort_by方法，接受一个block作为参数，按照指定规则进行排序。
puts "数组排序"
arr = Array.[](1, 25, 22, 1, 3)
#输出：[3, 1, 22, 25, 1]
puts "#{arr.reverse!}"
#输出：[1, 1, 3, 22, 25]
puts "#{arr.sort}"
#输出：[25, 22, 3, 1, 1]
puts "#{arr.sort.reverse}"
#(sort_by示例未完成)
#result = arr.sort_by { |s| s>10 }
#输出：[25, 22, 3, 1, 1]
#puts "#{result}"


#25. 数组展开
#arr.flatten 将数组中的数组展开为一个数组
puts "数组展开"
arr = [1, 2, 3, [0, 1, 2]]
result = arr.flatten
#输出：[1, 2, 3, 0, 1, 2]
puts "#{result}"


#27.数组替换
#replace 把 array 的内容替换为 other_array 的内容，必要的时候进行截断或扩充。
puts "数组替换"
arr = [1, 2, 3]
result = arr.replace [1, 2, 3, 0, 1, 2] # replace 和替换的数组之间有一个间隔
#输出：[1, 2, 3, 0, 1, 2]
puts "#{result}"


#28.数组的inject函数
puts "数组的inject函数"
arr = [1, 2, 3]
result = arr.inject(0) { |sum, item| sum += item }
#上面的示例：inject的参数0表示初始化sum，item表示遍历每一个元素，在block里不断自加，最后返回累计加值。
#输出：6
puts "#{result}"


#28.数组的map函数
#map的item也表示遍历数组元素，对元素进行计算后，返回一个结果数组。
puts "数组的map函数"
arr = [1, 2, 3]
result = arr.map() { |item| item = item*2 }
#输出：[2, 4, 6]
puts "#{result}"

#29.数组的压缩 pack函数
puts "数组的压缩 "
a = ["a", "b", "c"]
n = [65, 66, 67]
puts a.pack("A3A3A3") #=> "a  b  c  "
puts a.pack("a3a3a3") #=> "a\000\000b\000\000c\000\000"
puts n.pack("ccc") #=> "ABC"