class SequenceCreationController < ApplicationController
  include ApplicationHelper
  
  include Textual
  
  attr_accessor :sequence_creation

  def sequence_creation
    initialize(sequence_creation)
      @sequence_creation = sequence_creation
      @sequence_creation= ()
  end

end
