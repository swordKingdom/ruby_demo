class ClassDefine
  @@no_of_customers=0

  def initialize(id, name, addr)
    @cust_id=id
    @cust_name=name
    @cust_addr=addr
  end

  def hello
    puts "Hello Ruby!"
  end
end


#创建对象
first = ClassDefine.new("a", "b", "c")
puts "#{first.hello}"