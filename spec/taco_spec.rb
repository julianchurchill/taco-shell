require_relative '../lib/taco'

class InputFaker
  def initialize
    @strings = [""]
  end

  def prime_with strings
    @strings = strings
  end

  def gets
    next_string = @strings.shift
    next_string
  end
end

describe "Taco shell" do
  it "should present a prompt for input" do
    output = mock('output')
    output.should_receive(:puts).with("taco> ")

    taco = Taco.new output, InputFaker.new
    taco.process_input
  end

  context "echo command" do
    it "should echo a simple string" do
      (input = InputFaker.new).prime_with [ "echo simplestring" ]
      output = mock('output', :puts => nil)
      output.should_receive(:puts).with("simplestring")

      taco = Taco.new output, input
      taco.process_input
    end

    it "should echo a blank line if no string specified" do
      (input = InputFaker.new).prime_with [ "echo" ]
      output = mock('output', :puts => nil)
      output.should_receive(:puts).with("")

      taco = Taco.new output, input
      taco.process_input
    end
  end
end
