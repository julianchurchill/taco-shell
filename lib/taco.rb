
class Taco
  def initialize output, input
    @output_stream = output
    @input_stream = input
  end

  def process_input
    @output_stream.puts( "taco> ")
    input = @input_stream.gets
    echo_command_match = /echo *(.*)/.match( input )
    if echo_command_match
      @output_stream.puts( echo_command_match[1] )
    end
  end
end

