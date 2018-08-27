require "./consts"

module Termy
  module Cursor
    def set_cursor_position(x, y)
      seq = ESCAPE_CODES["set_cursor_position"].gsub("<X>", x).gsub("<Y>", y)
      write(seq)
    end

    def move_cursor_up(n = 1)
      seq = ESCAPE_CODES["move_cursor_up"].gsub("<N>", n)
      write(seq)
    end
  end
end
