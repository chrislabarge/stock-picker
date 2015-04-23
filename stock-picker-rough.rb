require 'test/unit'


def days
	@days
end

def order(array)
		
	return array.sort
 
end




def stock_picker(days)
	@days = days
	@trades = []
  @trades_hash = {}


	days.each_with_index  do |day,index| 
    
     
    while index < @days.length - 1 
       index += 1
       
       @trades_hash["Buy for #{day}, sell for #{@days[index]} for a profit of"] =  @days[index] - day 
       #@trades << day - @days[test]  
    end   
  end
 
	return @trades_hash.sort_by { |string, profit| profit }.last
end

days = [3,4,5,6,7,3,2,15,20]

 stock_picker(days)



class TC_MyTest < Test::Unit::TestCase
  # def setup
  # end

  # def teardown
  # end

  #def test_method
  #	assert method_name , 'method is not true'
 # end 

  def test_order_method
  	assert order([1,2,3,4]) , 'method is not true'
  	assert_equal [1,2,3,4], order([4,3,1,2])
  end 

  def test_stock_picker
  	days = [4,5,6,3,2,1]
  #	assert_equal stock_picker(days)	
  	assert_equal ["Buy for 4, sell for 6 for a profit of", 2], stock_picker(days), "test the stock picker"
  end



end