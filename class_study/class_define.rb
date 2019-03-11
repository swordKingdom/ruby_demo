class ClassDefine
  @@cust_id

  def initialize(id)
    @@cust_id = id
  end

  def ClassDefine.custId=(x)
    @@cust_id = x
  end

  def ClassDefine.custId
    @@cust_id
  end

  def hello
    puts "Hello Ruby! #{@@cust_id}"
  end
end


#创建对象

ClassDefine.custId = "a"
puts "#{ClassDefine.custId}"
puts "#{first.hello}"