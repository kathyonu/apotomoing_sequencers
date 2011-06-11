require 'test_helper'

class AnagramWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:anagram, 'me')
  end
  
  test "display" do
    render_widget 'me'
    assert_select ".anagramWidgetDisplay"
    assert_select ".anagramList"
    assert_select "p"
    assert_select "ul"
    assert_select "li"
    assert_select "#anagramListClose"
  end

  test "form" do
    render_widget 'me'
    assert_select ".formAnagram"
    assert_select "form"
    assert_select "input#anagram_text"
    assert_select "input#description"
    assert_select "input#reference"
  end
end
