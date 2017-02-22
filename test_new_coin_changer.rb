require 'minitest/autorun'
require_relative 'new_coin_changer.rb'

class TestNewCoinChanger < Minitest::Test

    def test_for_cents_returns_empty_hash
    # Runs a test to see if the test returns zero cents
       results = new_coin_changer(0)
       assert_equal({}, results)
    end

    def test_for_3_pennies_returns_3_cents
     
     results = new_coin_changer(3)
     assert_equal({penny: 3}, results)
    end

end       	