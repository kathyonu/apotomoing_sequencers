class SequenceCompleteController < ApplicationController
  include ApplicationHelper
  
  include Textual
  
  attr_accessor :complete_sequence

  def sequence_complete
    initialize(sequence_complete)
      @sequence_complete = sequence_complete
      @sequence_complete= ()
  end

#  def complete_sequence
#    initialize(complete_sequence)
#      @complete_sequence = complete_sequence
#      @complete_sequence= ()
#  end

  def complete_sequenced
    initialize(complete_sequenced)
      @complete_sequenced = complete_sequenced
      @complete_sequenced= ()
  end

end
