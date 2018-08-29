require "./termy"
# Temporary testing, dont judge.

termy = Termy::Manager.new
termy.clear_screen
termy.hide_cursor
x, y = termy.get_terminal_size
termy.set_cursor_position x / 2, y / 2
# termy.move_cursor_up 5
termy.write_centered "Hello, this is termy"
termy.write "Sleeping for 5.."
sleep 5
termy.cleanup
