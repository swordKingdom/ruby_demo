#(1)while 语句
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


#(2)while 修饰符
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


#(3)until语句
=begin
语法格式：
until conditional [do]
   code
end

当 conditional 为假时，执行 code。
语法中 do 可以省略不写。但若要在一行内写出 until 式，则必须以 do 隔开条件式或程式区块。
=end

puts "until语句:"
$i = 0
$num = 5
=begin
输出:
在循环语句中 i = 0
在循环语句中 i = 1
在循环语句中 i = 2
在循环语句中 i = 3
在循环语句中 i = 4
在循环语句中 i = 5
=end
until $i > $num do
  puts("在循环语句中 i = #$i")
  $i +=1;
end


#(4)until修饰符
=begin
语法格式：
code until conditional

或者

begin
   code
end until conditional

当 conditional 为 false 时，执行 code。
如果 until 修饰符跟在一个没有 rescue 或 ensure 子句的 begin 语句后面，code 会在 conditional 判断之前执行一次。
=end
puts "until修饰符:"
$i = 0
$num = 5
=begin
输出:
在循环语句中 i = 0
在循环语句中 i = 1
在循环语句中 i = 2
在循环语句中 i = 3
在循环语句中 i = 4
在循环语句中 i = 5
=end
begin
  puts("在循环语句中 i = #$i")
  $i +=1;
end until $i > $num


#(5)for 语句
=begin
语法格式：
for variable [, variable ...] in expression [do]
   code
end

先计算表达式得到一个对象，然后针对 expression 中的每个元素分别执行一次 code。
=end
puts "for 语句:"
=begin
输出：
局部变量的值为 0
局部变量的值为 1
局部变量的值为 2
局部变量的值为 3
=end
for i in 0..3
  puts "局部变量的值为 #{i}"
end