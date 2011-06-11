require 'test_helper'

class SequenceCreatedWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:sequence_created, 'me')
  end
  
  test "display" do
    render_widget 'me'
    assert_select ".sequenceCreatedWidgetDisplay"
    assert_select ".formSequenceCreated"
  end

  test "form" do
    render_widget 'me'
    assert_select ".formSequenceCreated"
    assert_select "form"
    assert_select "input#sequence_text"
    assert_select "input#sequence_creation"
    assert_select "input#sequence_complete"
    assert_select "input#sequence_lexigram"
    assert_select "input#sequence_singular"
  end
end
