require 'test_helper'

class SequencerWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:sequencer, 'me')
  end
  
  test "display" do
    render_widget 'me'
    assert_select "p"
  end
end
