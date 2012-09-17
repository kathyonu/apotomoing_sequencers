 class SequenceLexigramController < ActionController::Base
  include ApplicationHelper
  include Textual

  attr_accessor :sequence_lexigram
  attr_accessor :lexigram_sequenced

  def sequence_lexigram
    initialize(sequence_lexigram)
      @sequence_lexigram = sequence_lexigram
      @sequence_lexigram= ()
  end

  def lexigram_sequenced
    initialize(lexigram_sequenced)
      @lexigram_sequenced = lexigram_sequenced
      @lexigram_sequenced= ()
  end

end
