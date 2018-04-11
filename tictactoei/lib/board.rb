class Board
    attr_reader :grid # first spec 
    def self.create_grid 
        Array.new(3) { Array.new(3) } #3rd spec 
    end     
    def initialize(grid = Board.create_grid) #2nd spec 
        @grid = grid 
    end 

    def [](pos)
        row, col = pos
        grid[row][col]
      end
    
      def []=(pos, value)
        row, col = pos
        grid[row][col] = value
      end

    def place_mark(pos, mark)
        self[pos] = mark 
    end 

    def empty?(pos) 
        self[pos].nil?
    end 

    def winner 
        #we need to get all the rows, all the columns, and all the diagnols, and check to see if they 
        #have 3 of either :X or :O inside of them. 
        #there should be 3 rows, 3 columns, and 2 diagnols 
        #we will need a helper method to return the 3 columns, and 2 diagnols 


    end 

    def columns 
        result = [[],[],[]]
        grid.each do |row| 
            row.each.with_index do |el, idx| 
                result[idx] << el 
            end 
        end 
        return result  
    end 

    def diagnols 
        diag1 = [[0,0],[1,1],[2,2]]
        diag2 = [[0,2],[1,1],[2,0]] 

        [diag1, diag2].map do |diag|  # every diag is one of the diags 
            diag.map do |row, col| 
                grid[row][col] 
            end 
        end 
        
    end 
end
