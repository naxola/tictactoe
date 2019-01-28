class Player
    attr_reader :name, :mark
    def initialize (name, mark)
        @name = name
        @mark = mark
    end
    def move
        puts "#{@name}, te toca mover"
        gets.chomp.split(",")
    end
end