class SequenceSingularController < ApplicationController
  include ApplicationHelper
  
  include Textual
  
  attr_accessor :sequence_singular

  def sequence_singular
    initialize(sequence_singular)
      @sequence_singular = sequence_singular
      @sequence_singular= ()
  end

  def singular_sequenced
    initialize(singular_sequenced)
      @singular_sequenced = singular_sequenced
      @singular_sequenced= ()
  end

end
