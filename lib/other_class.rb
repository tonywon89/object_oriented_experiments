require_relative 'superclass'

class OtherClass < SuperClass

  def initialize
    @instance_two = "Bye"
  end

  def instance_two
    @instance_two
  end
end
