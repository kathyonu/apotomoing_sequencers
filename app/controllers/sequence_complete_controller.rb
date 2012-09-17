class SequenceCompleteController < ApplicationController
  include ApplicationHelper
  include Textual
  
  attr_accessor :sequence_complete
  attr_accessor :complete_sequenced

  def sequence_complete
    initialize(sequence_complete)
      @sequence_complete = sequence_complete
      @sequence_complete= ()
  end

  def complete_sequenced
    initialize(complete_sequenced)
      @complete_sequenced = complete_sequenced
      @complete_sequenced= ()
  end

end
