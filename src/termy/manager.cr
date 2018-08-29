require "./*"

module Termy
  class Manager
    setter io
    @width : Int32
    @height : Int32

    include Termy::Screen
    include Termy::Cursor

    def initialize(*io)
      if !io.empty?
        @io = io.at(0)
      else
        @io = STDIN
      end

      @width, @height = get_terminal_size
    end

    def write(sequence)
      @io.noecho!
      @io.raw do |io|
        io.puts sequence
        io.flush
      end
    end
  end
end
