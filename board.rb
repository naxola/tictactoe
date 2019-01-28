class Board
    require_relative 'controller'

    attr_reader :tablero
    attr_reader :count
    
    #inicializamos y dibujamos el tablero
    def initialize
        @tablero = Array.new(3){Array.new(3, " ")}
        dibuja_tablero(@tablero)
    end

    #inserta la ficha en el tablero
    def move(player)
        movement = player.move
        fila = movement[0].to_i - 1
        columna = movement[1].to_i - 1
        if(check_pos?(fila,columna))
            @tablero[fila][columna] = player.mark
        end
        dibuja_tablero(@tablero)
    end
    
    #Chek que se ha cumplido 3 en reaya
    def tres_en_raya?(player)
        puts = Controller.rows?(@tablero,player.mark)
    end

    private 
    def dibuja_tablero(tablero)
        puts "   |_1_|_2_|_3_|"
        puts " 1 | #{@tablero[0][0]} | #{@tablero[0][1]} | #{@tablero[0][2]} |"
        puts " 2 | #{@tablero[1][0]} | #{@tablero[1][1]} | #{@tablero[1][2]} |"
        puts " 3 | #{@tablero[2][0]} | #{@tablero[2][1]} | #{@tablero[2][2]} |"
    end

    def check_pos?(fila, columna)
        if (@tablero[fila][columna] != " ")
            false
        else
            true
        end
    end

end