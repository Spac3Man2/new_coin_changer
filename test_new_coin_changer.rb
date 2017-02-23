require 'minitest/autorun'
require_relative 'new_coin_changer.rb'

class TestNewCoinChanger < Minitest::Test

    def test_for_cents_returns_empty_hash
    # Runs a test to see if the test returns zero cents
       results = new_coin_changer(0)
       assert_equal({}, results)
    end

    def test_for_3_pennies_returns_3_cents
    # Runs a test to see if the function returns change as 3 cents and it works
     results = new_coin_changer(3)
     assert_equal({penny: 3}, results)
    end

    def test_for_one_nickel_returns_5_cents
    # Runs a test to see if the function returns change as 5 cents and it works
     results = new_coin_changer(5) # 5 represents 1 nickel in the function.
     assert_equal({nickel: 1}, results)
    end

    def test_for_one_nickel_and_3_pennies_returns_8_cents
    # Runs a test to see if the function returns change as 5 cents and 3 pennies it works
     results = new_coin_changer(8) # 8 represents 1 nickel and 3 pennies in the function.
     assert_equal({nickel: 1, penny: 3}, results)
    end

    def test_for_one_nickel_and_4_pennies_returns_9_cents
    # Runs a test to see if the function returns change as 5 cents and 4 pennies it works
     results = new_coin_changer(9) # 9 represents 1 nickel and 4 pennies in the function.
     assert_equal({nickel: 1, penny: 4}, results)
    end

    def test_for_one_dime_returns_10_cents
    # Runs a test to see if the function returns change as 10 cents and it works
     results = new_coin_changer(10) # 10 represents 1 dime in the function.
     assert_equal({dime: 1}, results)
    end

    def test_for_one_dime_and_1_penny_returns_11_cents
    # Runs a test to see if the function returns change as 11 cents and it works
     results = new_coin_changer(11) # 11  represents 1 dime and 1 penny in the function.
     assert_equal({dime: 1, penny: 1}, results)
    end

    def test_for_one_dime_and_1_nickel_and_3_pennies_returns_18_cents
    # Runs a test to see if the function returns change as 18 cents and it works
     results = new_coin_changer(18) # 18  represents 1 dime and 1 nickel and 3 penny in the function.
     assert_equal({dime: 1, nickel: 1, penny: 3}, results)
    end

    def test_for_two_dimes_and_to_see_if_return__is_20_cents
    # Runs a test to see if the function returns change as 20 cents and it works
     results = new_coin_changer(20) # 20  represents 2 dimes in the function.
     assert_equal({dime: 2}, results)
    end

    def test_for_two_dimes_and_4_pennies_to_see_if_return__is_24_cents
    # Runs a test to see if the function returns change as 24 cents and it works
     results = new_coin_changer(24) # 24  represents 2 dimes and 4 pennies in the function.
     assert_equal({dime: 2, penny: 4}, results)
    end

end       	