require "./consts"
require "io/buffered"

module Termy
  module Cursor
    def set_cursor_position(x, y)
      if x > @width || y > @height
        raise EXCEPTIONS["cursor_position_out_of_bounds"]
      end

      seq = ESCAPE_CODES["set_cursor_position"].gsub("<X>", x).gsub("<Y>", y)
      write(seq)
    end

    def move_cursor_up(n = 1)
      seq = ESCAPE_CODES["move_cursor_up"].gsub("<N>", n)
      write(seq)
    end

    def hide_cursor
      write(ESCAPE_CODES["hide_cursor"])
    end

    def show_cursor
      write(ESCAPE_CODES["show_cursor"])
    end
  end
end
