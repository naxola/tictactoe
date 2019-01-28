class Main
    require_relative 'player'
    require_relative 'board'

    def initialize
        puts "Juego de TIC - TAC - TOE"
        puts "Nombre del jugador 1"
        name1 = gets.chomp
        @player1 = Player.new(name1, "X")
        puts "Nombre del jugador 2"
        name2 = gets.chomp
        @player2 = Player.new(name2, "O")
        puts "A empezar!!"
        @board = Board.new
        game_loop
    end

    #Comenzamos el loop del juego hasta que gane un judaor
    def game_loop
        players = [@player1, @player2]
        res = false
        i = 0

        while res == false
            player = players[ i % 2 ]
            puts "Turno de #{player.name}"
            @board.move(player)
            res = @board.tres_en_raya?(player)
            i += 1
        end
        puts "================================="
        puts "Fin de la partida!"
        puts "Gana #{players[ (i - 1) % 2 ].name}!!"
    end
end
