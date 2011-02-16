require 'test_helper'

class QuoteCellTest < Cell::TestCase
  test "display" do
    invoke :display
    assert_select "p"
  end
  

end
