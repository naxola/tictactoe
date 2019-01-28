module Controller
    def self.rows? (board, mark)
        i = 0
        j = 0
        count = 0
        while (i < 3)
            while (j < 3)
                if (board[i][j] == mark)
                    count += 1
                    if count == 3
                        return true
                    end
                else
                    count = 0
                end
                j += 1
            end
            i += 1
            j = 0
            count = 0
        end
        false
    end

end