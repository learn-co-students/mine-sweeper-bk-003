
class MineSweeper
    attr_accessor :field

    def initialize(field)
    	@field = field 
    end

    def sweep_field
  		# i_row = 0 
  		# k_cell = 0
  		field.each.with_index do |row, row_ind|
  			row.each.with_index do |cell, cell_ind|
  				if cell.is_a?(String)
  					bomb(row_ind, cell_ind)
  				end
  				# k_cell += 1 	
  			end
  			# i_row += 1
  		end
  		field
  	end

    def bomb(row, cell)
	  	r = -1
	  	while r < 2 do 
	  		c = -1
	  		while c < 2 do 
	  			# checks if the row and cell are index of 0 
	  			if (row + r) != -1 && (cell + c) != -1
	  				# checks if the row and cell exist (are not bigger than board)
	  				if field[row + r] && field[row + r][cell + c]
	  					# checks if not a bomb
	  					if field[row + r][cell + c].is_a?(Fixnum)
		  					field[row + r][cell + c] += 1
	  					end
	  				end
	  			end
	  			c += 1
	  		end
	  		r += 1
	  	end
    end

end