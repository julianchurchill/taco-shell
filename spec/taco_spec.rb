require_relative '../lib/taco'

describe "Taco" do
  it "should present a prompt for input" do
    output = double('output')
    output.should_receive(:puts).with("taco> ")

    taco = Taco.new output
    taco.run
  end
end
