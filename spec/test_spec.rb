require 'rspec'
require 'spec_helper'
require 'subclass'
require 'other_class'

describe SubClass do
  subject(:sub) { SubClass.new }
  let(:other) { double("other") }

  describe "#call_instance_one" do
    it "says hello" do
      sub.do_something
      expect(sub.call_instance_one).to eq("Hello")
    end
  end

  describe "#interact_with_other_class" do
    it "calls instance of other class" do
      allow(other).to receive(:instance_two).and_return("Bye")
      expect(sub.interact_with_other_class(other)).to eq("Bye")
    end
  end
end

describe OtherClass do
  subject(:other) { OtherClass.new}
  let(:sub_instance) { double("sub_instance", name: "Sub Instance Name")}

  describe "#say_hello_to_sub" do
    it "accesses the name of the sub instance" do
      expect(subject.say_hello_to_sub(sub_instance)).to eq("Hello, #{sub_instance.name}")
    end
  end

end
