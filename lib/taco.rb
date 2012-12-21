
class Taco
  def initialize output
    @output_stream = output
  end

  def run
    @output_stream.puts( "taco> ")
    input = STDIN.gets
    if input == "echo simplestring"
      @output_stream.puts( "simplestring" )
    end
  end
end

