require 'test_helper'

class SequencerWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:sequencer_widget, 'me')
  end
  
  test "display" do
    render_widget 'me'
    assert_select "h1"
  end
end
