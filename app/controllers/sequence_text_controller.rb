class SequenceTextController < ApplicationController
  include ApplicationHelper
  include Textual
  
  attr_accessor :sequence_text
  attr_accessor :text_sequenced

  def sequence_text
    initialize(sequence_text)
      @sequence_text = sequence_text
      @sequence_text= ()
  end

  def text_sequenced
    initialize(text_sequenced)
      @text_sequenced = text_sequenced
      @text_sequenced= ()
  end

end
