require 'test_helper'

class AnagramWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:anagram_widget, 'me')
  end
  
  test "display" do
    render_widget 'me'
    assert_select "h1"
  end
end
