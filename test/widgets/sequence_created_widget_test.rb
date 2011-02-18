require 'test_helper'

class SequenceCreatedWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:sequence_created_widget, 'me')
  end
  
  test "display" do
    render_widget 'me'
    assert_select "p"
  end
end
