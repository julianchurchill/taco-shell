
class Taco
  def initialize output, input
    @output_stream = output
    @input_stream = input
  end

  def process_input
    @output_stream.puts( "taco> ")
    input = @input_stream.gets
    if input == "echo simplestring"
      @output_stream.puts( "simplestring" )
    end
  end
end

