def new_coin_changer(amount)
	  
   change = {} 	# There is no change to give. The empty hash will represent that if my amount equals zero.

    if amount == 0

	elsif amount < 5 # If the amount is less then 5 the function will return a penny or pennies.

		change = {penny: amount}

    end 
    change 
end