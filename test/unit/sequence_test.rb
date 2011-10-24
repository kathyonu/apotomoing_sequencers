require 'test_helper'

class SequenceTest < ActiveSupport::TestCase

  test "form" do
    assert "form > input#sequence_sequence_text"
	assert "input#sequence_sequence_text"
    assert "#error_explanation"
  end
end
