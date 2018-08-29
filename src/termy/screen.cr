require "./consts"

module Termy
  module Screen
    def clear_screen
      write(ESCAPE_CODES["clear_screen"])
      set_cursor_position(0, 0)
    end

    def get_terminal_size
      stdout = IO::Memory.new
      stderr = IO::Memory.new
      Process.run("/usr/bin/tput", args: ["cols"], output: stdout, error: stderr)
      Process.run("/usr/bin/tput", args: ["lines"], output: stdout, error: stderr)
      sizeData = stdout.to_s.split("\n")

      [sizeData[0].to_i, sizeData[1].to_i]
    end

    def get_terminal_center
      x, y = get_terminal_size
      [x / 2, y / 2]
    end

    def write_centered(text)
      x, y = get_terminal_center
      x -= text.size / 2
      set_cursor_position(x, y)
      puts text
    end

    # convenience wrapper for future
    def write(text)
      puts text
    end

    def cleanup
      clear_screen
      show_cursor
    end
  end
end
