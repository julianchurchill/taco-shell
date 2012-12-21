
class Taco
  @@prompt = "taco> "

  def initialize output, input
    @output_stream = output
    @input_stream = input
  end

  def process_input
    output_prompt
    process_command get_next_command
  end

  def output_prompt
    @output_stream.puts( @@prompt )
  end

  def get_next_command
    @input_stream.gets
  end

  def process_command command
    echo_command_match = /echo *(.*)/.match( command )
    if echo_command_match
      @output_stream.puts( echo_command_match[1] )
    end
  end
end

