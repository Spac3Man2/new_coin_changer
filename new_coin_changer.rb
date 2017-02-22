def new_coin_changer(amount)
	# There is no change to give. The empty hash will represent that.
	  
   change = {}  
    
    if amount == 0

	elsif amount < 5 

		change = {penny: amount}

    end 
    change 
end