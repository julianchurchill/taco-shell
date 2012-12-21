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

describe "Taco" do
  it "should present a prompt for input" do
    output = mock('output')
    output.should_receive(:puts).with("taco> ")

    taco = Taco.new output, InputFaker.new
    taco.process_input
  end

  it "should echo a string with the echo command" do
    (input = InputFaker.new).prime_with [ "echo simplestring" ]
    output = mock('output')
    output.should_receive(:puts).with("taco> ")
    output.should_receive(:puts).with("simplestring")

    taco = Taco.new output, input
    taco.process_input
  end

  it "should echo a blank line if no string specified" do
    (input = InputFaker.new).prime_with [ "echo" ]
    output = mock('output')
    output.should_receive(:puts).with("taco> ")
    output.should_receive(:puts).with("")

    taco = Taco.new output, input
    taco.process_input
  end
end
