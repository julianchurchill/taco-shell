require_relative '../lib/taco'

describe "Taco" do
  it "should present a prompt for input" do
    STDOUT.should_receive(:puts).with("taco> ")

    taco = Taco.new
    taco.run
  end
end
