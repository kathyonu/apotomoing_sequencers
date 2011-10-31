class SequenceTextController < ApplicationController
  include ApplicationHelper
  
  include Textual
  
  attr_accessor :sequence_text

  def sequence_text
    initialize(sequence_text)
      @sequence_text = sequence_text
      @sequence_text= ()
  end

end
