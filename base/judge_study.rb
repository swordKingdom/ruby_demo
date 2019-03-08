#1. 基础条件判断
=begin
语法格式：
if conditional [then]
      code...
[elsif conditional [then]
      code...]...
[else
      code...]
end
=end

puts "基础判断："
a = 4
#输出：在3到5之间
if a > 5
  puts " 大于5"
elsif a >3
  puts "在3到5之间"
else
  puts "小于3"
end

#2.Ruby if 修饰符其他用法
=begin
语法格式：
code if condition
=end
puts "if 修饰符其他用法："
$debug=1
print "debug\n" if $debug
#if修饰词组表示当 if 右边之条件成立时才执行 if 左边的式子。即如果 conditional 为真，则执行 code。


#3.unless 语句
=begin
语法格式：
unless conditional [then]
   code
[else
   code ]
end
=end
puts "unless修饰符："
#unless式和 if式作用相反，即如果 conditional 为假，则执行 code。如果 conditional 为真，则执行 else 子句中指定的 code。
a = 1
unless a == 1
  puts "等于1"
else
  puts "不等于1"
end


#4.unless其他用法
=begin
语法格式：
code unless conditional
=end
puts "unless其他用法："
$var = 1
print "2 -- 这一行不输出\n" unless $var
#unless式和 if式作用相反，即如果 conditional 为假，则执行 code。如果 conditional 为真，则执行 else 子句中指定的 code。


#5.case语句
=begin
语法格式：
case expression
[when expression [, expression ...] [then]
   code ]...
[else
   code ]
end

case先对一个 expression 进行匹配判断，然后根据匹配结果进行分支选择。
它使用 ===运算符比较 when 指定的 expression，若一致的话就执行 when 部分的内容。
通常我们省略保留字 then 。若想在一行内写出完整的 when 式，则必须以 then 隔开条件式和程式区块
=end
puts "case语句："
#输出:小孩
$age = 5
case $age
  when 0 .. 2
    puts "婴儿"
  when 3 .. 6
    puts "小孩"
  when 7 .. 12
    puts "child"
  when 13 .. 18
    puts "少年"
  else
    puts "其他年龄段的"
end
#当case的"表达式"部分被省略时，将计算第一个when条件部分为真的表达式。
puts "case语句表达式部分被省略时："
foo = false
bar = true
quu = false
#输出：bar is true
case
  when foo then
    puts 'foo is true'
  when bar then
    puts 'bar is true'
  when quu then
    puts 'quu is true'
end