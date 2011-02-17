require 'test_helper'

class QuoteCellTest < Cell::TestCase
  test "display" do
    invoke :display
    assert_select "p"
  end
  
 test "display2" do
    invoke :display2
    assert_select "h3"
  end

end
