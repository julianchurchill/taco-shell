require_relative '../lib/taco'

describe "Taco" do
  it "should present a prompt for input" do
    output = double('output')
    output.should_receive(:puts).with("taco> ")
    STDIN.should_receive(:read).and_return("")

    taco = Taco.new output
    taco.run
  end

  it "should echo a string with the echo command" do
    output = double('output')
    output.should_receive(:puts).with("taco> ")
    STDIN.should_receive(:read).and_return("echo simplestring")
    output.should_receive(:puts).with("simplestring")

    taco = Taco.new output
    taco.run
  end
end
