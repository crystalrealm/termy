require "./*"

module Termy
  class Manager
    setter io

    include Termy::Screen
    include Termy::Cursor

    def initialize(*io)
      if !io.empty?
        @io = io.at(0)
      else
        @io = STDIN
      end
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
