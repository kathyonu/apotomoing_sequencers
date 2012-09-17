class SequenceCreationController < ApplicationController
  include ApplicationHelper
  include Textual
  
  attr_accessor :sequence_creation
  attr_accessor :creation_sequenced

  def sequence_creation
    initialize(sequence_creation)
      @sequence_creation = sequence_creation
      @sequence_creation= ()
  end

  def creation_sequenced
    initialize(creation_sequenced)
      @creation_sequenced = creatioin_sequenced
      @creation_sequenced= ()
  end

end

