require("minitest/autorun")
require("minitest/rg")
require_relative("../models/preorder.rb") 

class PreorderTest < MiniTest::Test

  def setup
    params = {
      
    }
    @preorder = Preorder.new(params)

  end

  def test_preorder_can_format_name
    result_hash = {
      "first_name" => "Craig",
      "last_name" => "Morton" 
    }
    assert_equal(result_hash, @preorder.format_name)
  end

  def test_preorder_can_format_address
    result_hash = {
      "flat number" => "",
      "street number" => "92",
      "street_name" => "Murrayfield Gardens",
      "Edinburgh" => "Edinburgh",
      "post_code" => "EH12 6DJ",
      "country" => "UK"
    }
    assert_equal(result_hash, @preorder.format_address)
  end

  def test_
    
  end

end