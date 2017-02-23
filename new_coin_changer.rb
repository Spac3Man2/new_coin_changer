def new_coin_changer(amount)
	  
    change = {} 	# There is no change to give. The empty hash will represent that if my amount equals zero.
    
    if amount > 95 && amount < 99
    	change[:quarter] = 3
    	change[:dime] = 2
    	change[:penny] = amount - 95

    elsif amount > 90 && amount < 95
    	change[:quarter] = 3
    	change[:dime] = 1
    	change[:nickel] = 1
    	change[:penny] = amount - 90

    elsif amount == 85 # return change is 85 cents or 3 quarters and 1 dime.
    	change[:quarter] = 3
    	change[:dime] = 1

    elsif amount > 70 && amount < 80 # This is telling me that the amount is greater than 70 cents and less than 80 cents
    	change[:quarter] = 3 # return change is at least 75 cents.

    	change[{}] # Test to see what would happen if Iinput this into the test function. The test still passes returning 76 cents.
    	change[:penny] = amount - 75

    elsif amount > 60 && amount < 70
    	change[:quarter] = 2
    	change[:dime] = 1
        change[:nickel] = 1
        change[:penny] = amount - 65

    elsif amount >= 50 && amount < 55
    	change[:quarter] = 2
    	change[:penny] = amount - 50

    elsif amount == 35 
        change[:quarter] = 1
        change[:dime] = 1  

    elsif amount > 30 && amount < 35
    	change[:quarter] = 1
    	change[:nickel] = 1
    	change[:penny] = amount - 30

    elsif amount > 25 && amount < 30 # The amount of 27 cents is greater then 25 and less than 30.
    	change[:quarter] = 1 
    	change[:penny] = amount - 25 # with the amount being less then 30 and having a total of 27 that AMOUNT will SUBTRACT 1 quarter or 25 cents from from the total causing the PENNY(AMOUNT) to equal 2 pennies.
 
    elsif amount == 25
    	change[:quarter] = 1

    elsif amount > 20 && amount < 25
    	change[:dime] = 2
        change[:penny] = amount - 20

    elsif amount == 20 
    	change[:dime] = 2

    elsif amount > 15 && amount < 20 
     	change[:dime] = 1
     	change[:nickel] = 1
     	change[:penny] = amount - 15
    	
    elsif amount > 10 && amount < 15 
    	change[:dime] = 1 
    	change[:penny] = amount - 10

    elsif amount == 10
		change[:dime] = 1

    elsif amount == 0
    	change = {}

	elsif amount < 5 # If the amount is less then 5 the function will return a penny or pennies.

		#change[:nickel] = 1 
		change[:penny] = amount

    elsif amount == 5 # If the amount is equal to 5 the function should return 1 nickel

		change[:nickel] = 1
		
    elsif amount > 5 # If amount is less then 5 the function should return 4 pennies.
    	change[:nickel] = 1
		change[:penny] = amount - 5 #Is telling me that since the amount is less then 5 the funtion will return a value of pennies. (READING THIS BACKWARDS WILL SIMPLIFY THINGS MUCH EASIER WHERE: change[:penny] = amount - 5, IF READ BACKWARDS IT SHOULD BE LOOKED AT AS 5 - AMOUNT = PENNY[:CHANGE] ) 

	end     
    change 
end