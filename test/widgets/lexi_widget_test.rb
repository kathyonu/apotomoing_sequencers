require 'test_helper'

class LexiWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:lexi, 'me')
  end
  
  test "display" do
    render_widget 'me'
    assert_select ".formLexi"
    assert_select "#lexi"
    assert_select "form[0]"
    assert_select "#sequencetext"
    assert_select "#submit"
  end
end
