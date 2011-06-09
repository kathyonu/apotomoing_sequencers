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
    assert_select "input#sequence_created"
    assert_select "form"
    assert_select "#sequence_text"
    assert_select "#sequence_creation"
    assert_select "#sequence_complete"
    assert_select "#sequence_lexigram"
    assert_select "#sequence_singular"
  end
end
