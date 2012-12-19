
class Taco
  def initialize output
    @output_stream = output
  end

  def run
    @output_stream.puts( "taco> ")
  end
end

