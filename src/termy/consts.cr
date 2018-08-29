require "./exception"

ESCAPE_CODES = {
  "clear_screen"        => "\033[2J",
  "set_cursor_position" => "\033[<Y>;<X>H",
  "move_cursor_up"      => "\033[<N>A",
  "move_cursor_down"    => "\033[<N>B",
  "move_cursor_right"   => "\033[<N>C",
  "move_cursor_left"    => "\033[<N>D",
  "hide_cursor"         => "\033[?25l",
  "show_cursor"         => "\033[?25h",
}

EXCEPTIONS = {
  "cursor_position_out_of_bounds" => CursorPositionOutOfBoundsException.new("Cursor position is out of bounds."),
}
