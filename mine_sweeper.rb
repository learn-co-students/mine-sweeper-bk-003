class MineSweeper  
  # attrs here
  attr_accessor :field
  
  def initialize(field)
    # code here
    @field = field
  end

  def sweep_field
    # code here
    field.each_with_index do |arr, index|
    	arr.each_with_index do |e, i|
    		sweep_row(index, i) if e == '*'
    	end
    end
    field
  end

  def sweep_row(i1, i2)
  	[i1-1, i1, i1+1].each do |row|
	  	[i2-1,i2,i2+1].each do |i|
	  		if row != -1 && field[row] && field[row][i] && field[row][i] != '*'
	  			field[row][i] += 1
	  		end
	  	end
	end
  end
end