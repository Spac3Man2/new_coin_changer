require 'minitest/autorun'
require_relative 'new_coin_changer.rb'

class TestNewCoinChanger < Minitest::Test

    def test_for_cents_returns_empty_hash
       total = new_coin_changer(0)
       assert_equal({}, total)
    end

end       	