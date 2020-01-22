module WirePlacement
  @black_row = [['yellow delta two...'], ['blue alpha two...'], ['white delta three...'], ['white bravo two...'], ['red alpha one...'], ['blue charlie three...'], ['black bravo one...'], ['red charlie four...'], ['yellow alpha three...'], ['yellow delta one...']]
  @blue_row = [['yellow delta one...'], ['blue charlie four...'], ['white delta two...'], ['white charlie one...'], ['red bravo three...'], ['blue charlie two...'], ['black delta four...'], ['red delta three...'], ['yellow charlie three...'], ['yellow alpha one...']]
  @red_row = [['yellow delta two...'], ['blue alpha one...'], ['white delta four...'], ['white bravo four...'], ['red charlie four...'], ['blue charlie one...'], ['black alpha four...'], ['red bravo one...'], ['yellow alpha two...'], ['yellow bravo two...']]
  @white_row = [['yellow alpha two...'], ['blue charlie four...'], ['white bravo three...'], ['white alpha one...'], ['red bravo two...'], ['blue delta three...'], ['black delta two...'], ['red charlie one...'], ['yellow alpha four...'], ['yellow bravo four...']]
  @yellow_row = [['yellow delta one...'], ['blue delta four...'], ['white bravo two...'], ['white charlie one...'], ['red bravo three...'], ['blue bravo one...'], ['black bravo four...'], ['red charlie two...'], ['yellow alpha three...'], ['yellow alpha four...']]

  def solve_wire_placement(configuration)
    i = 0
    spoken_response = ""
    Pocketsphinx::LiveSpeechRecognizer.new(configuration).recognize do |input|
      puts input
      input.delete('done')
      input.strip!
      case input
      when 'black'
        loop do
          spoken_response += @black_row[i]
          i += 1
          break if i == 9
        end
      when 'blue'
        loop do
          spoken_response += @blue_row[i]
          i += 1
          break if i == 9
        end
      when 'red'
        loop do
          spoken_response += @red_row[i]
          i += 1
          break if i == 9
        end
      when 'white'
        loop do
          spoken_response += @white_row[i]
          i += 1
          break if i == 9
        end
      when 'yellow'
        loop do
          spoken_response += @yellow_row[i]
          i += 1
          break if i == 9
        end
      end
      return spoken_response
    end
  end
end
