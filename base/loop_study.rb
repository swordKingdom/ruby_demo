#1.while 语句
=begin
语法格式：
while conditional [do]
   code
end
或者
while conditional [:]
   code
end
=end
puts "while 语句:"
$i = 0
$num = 5
=begin
输出:
在循环语句中 i = 0
在循环语句中 i = 1
在循环语句中 i = 2
在循环语句中 i = 3
在循环语句中 i = 4
=end
while $i < $num do
  puts("在循环语句中 i = #$i")
  $i +=1
end


#2.while 修饰符
=begin
code while condition
或者
begin
  code
end while conditional

=end
puts "while 修饰符:"
$i = 0
$num = 5
=begin
输出:
在循环语句中 i = 0
在循环语句中 i = 1
在循环语句中 i = 2
在循环语句中 i = 3
在循环语句中 i = 4
=end

begin
  puts("在循环语句中 i = #$i")
  $i +=1
end while $i < $num


#3.until语句
