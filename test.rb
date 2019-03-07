#!/user/bin/ruby - w

#使用new初始化数组的示例
#(1)初始化不同的数值
arr1 = Array.new(10){|e| e=e*e}
puts "#{arr1}"

#(1)初始化相同的数值
arr2 = Array.new(10,"mac")
puts "#{arr2}"

#使用中括号[]初始化数组
arr3 = ["data",1,1.0,"false"]
arr3.each do |i|
	puts i
end


#使用()初始化
arr4 = Array.[](1,2,3,4)
arr4.each do |i|
  puts i
end


#默认出初始值
arr5 = Array[]
puts "#{arr5}"

#初始化连续的数值
arr6 = Array(1..9)
puts "#{arr6}"







