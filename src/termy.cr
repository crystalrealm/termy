# TODO: Write documentation for `Termy`
require "./termy/*"

module Termy
  VERSION = "0.0.1"
end

# Temporary testing, dont judge.

termy = Termy::Manager.new
termy.clear_screen
termy.set_cursor_position 5, 45
termy.move_cursor_up 5
# For adding text, just use puts
puts "Hello, this is termy."
