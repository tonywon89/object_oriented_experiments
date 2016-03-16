require 'rspec'
# require 'spec_helper'
require 'superclass'
require 'module1'
require 'subclass'

describe "SubClass" do
  subject(:sub) { SubClass.new }
  let(:other) { double("other", :instance_two => "Bye") }


  describe "#call_instance_one" do
    it "says hello" do
      sub.do_something
      expect(sub.call_instance_one).to eq("Hello")
    end
  end

  describe "#interact_with_other_class" do

    it "calls instance of other class" do
      expect(sub.interact_with_other_class(other)).to eq("Bye")
    end

  end
end
