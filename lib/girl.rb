class Girl
  def self.my_attr_assessor arg
    #setter
    self.class_eval("def #{arg}=(val);@#{arg}=val;end")

    #getter
    self.class_eval("def #{arg};@#{arg};end")
  end

  def self.my_attr_writer arg
    self.class_eval("def #{arg}=(val);@#{arg}=val;end")

    #self.class_eval do
    #  define_method "#{arg}=" do |value|
    #    instance_variable_set("@#{arg}", value)
    #  end
    #end
  end

  def self.my_attr_reader arg
    self.class_eval("def #{arg};@#{arg};end")

    #self.class_eval do
    #  define_method "#{arg}" do
    #   instance_variable_get("@#{arg}")
    #  end
    #end
  end

  my_attr_assessor :gender
  my_attr_writer :age
  my_attr_reader :age

  def initialize()
    @gender = 'female'
  end

end


Girl.class_eval do
  def self.my_class_method name
    p "Hello! +#{name}"
  end
end

Girl.instance_eval do
  self # => Girl
  # current class => Girl's singleton class
  def my_class_method1
    puts 'this is a singleton method of class Girl'
  end
end

girl = Girl.new
p girl.age=1
p girl.age
p girl.gender="ad"
p girl.gender


Girl.my_class_method "girl"
Girl.my_class_method1
