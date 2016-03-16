require_relative 'superclass'

class OtherClass < SuperClass

  def initialize
    @instance_two = "Bye"
  end

  def instance_two
    @instance_two
  end

  def say_hello_to_sub(sub_instance)
    "Hello, #{sub_instance.name}"
  end
end
