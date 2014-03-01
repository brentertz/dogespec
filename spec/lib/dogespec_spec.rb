require "spec_helper"

describe Dogespec do
  let(:output) { StringIO.new }
  let(:formatter) { Dogespec::Formatter.new(@output) }
  let(:example) { RSpec::Core::ExampleGroup.describe.example }

  describe "examples" do
    context "passed" do
      it "dogeifies the example" do
        formatter.should_receive(:dogeify)
        formatter.example_passed(example)
      end
    end

    context "pending" do
      it "dogeifies the example" do
        formatter.should_receive(:dogeify).twice
        formatter.example_pending(example)
      end
    end

    context "failed" do
      it "dogeifies the example" do
        formatter.should_receive(:dogeify)
        formatter.example_failed(example)
      end
    end
  end
end
