def new_coin_changer(amount)
	  
   change = {} 	# There is no change to give. The empty hash will represent that if my amount equals zero.

    if amount == 0
    	change = {}

	elsif amount < 5 # If the amount is less then 5 the function will return a penny or pennies.

		#change[:nickel] = 1 
		change[:penny] = amount



	elsif amount == 5 # If the amount is equal to 5 the function should return 1 nickel

		change[:nickel] = 1
		
	
	elsif amount > 5
		  change[:nickel] = 1
		  change[:penny] = amount - 5
		  	
    
    end     
    change 
end