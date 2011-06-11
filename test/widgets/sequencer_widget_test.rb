require 'test_helper'

class SequencerWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:sequencer, 'me')
  end
  
  test "display" do
    render_widget 'me'
    assert_select "#sequencerOpen"
    assert_select "#sequencerWidgetDisplay"
    assert_select ".linksInfo"
    assert_select ".countAnagrams"
    assert_select ".countQuotes"
    assert_select ".countSequenceCreateds"
    assert_select ".countSequences"
    assert_select ".tmpButtons"
    assert_select "#sequencerClose"
  end
end
