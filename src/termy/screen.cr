require "./consts"

module Termy
  module Screen
    def clear_screen
      write(ESCAPE_CODES["clear_screen"])
    end
  end
end
