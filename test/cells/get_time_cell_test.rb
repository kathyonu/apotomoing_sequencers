require 'test_helper'

class GetTimeCellTest < Cell::TestCase
  test "show" do
    invoke :show
    assert_select "p"
  end
  

end
