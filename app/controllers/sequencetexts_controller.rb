class SequencetextsController < ActionController::Base
  include ApplicationHelper
  
  include Textual
  
  attr_accessor :sequencetext

  def sequencetext
    initialize(sequencetext)
      @sequencetext = sequencetext
      @sequencetext= ()
  end

end
