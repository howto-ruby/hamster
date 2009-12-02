require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Hamster::List do

  describe "#each" do

    [
      [],
      ["A"],
      ["A", "B", "C"],
    ].each do |values|

      describe "on #{values.inspect}" do

        list = Hamster.list(*values)

        it "iterates over the items in order" do
          items = []
          list.each { |value| items << value }
          items.should == values
        end

        it "returns self" do
          list.each {}.should == list
        end

      end

    end

  end

end