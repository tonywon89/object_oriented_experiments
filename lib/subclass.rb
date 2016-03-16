require_relative 'module1'
require_relative 'superclass'

class SubClass < SuperClass

  include Module1

  def do_something
    # puts "Did something"
    self.instance_one = "Hello"
  end

  def call_instance_one
    instance_one
  end

  def interact_with_other_class(other)
    other.instance_two
  end

end

a = SubClass.new
a.run
p a.call_instance_one
