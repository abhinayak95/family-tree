
require_relative '../src/terminal.rb'

class TerminalMock < Terminal

  def set_input input
  	@data = input
  end

  def get_user_input
    @data
  end

end