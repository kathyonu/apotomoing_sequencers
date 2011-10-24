 class SequenceLexigramController < ActionController::Base
  include ApplicationHelper

  def sequence_lexigram
    initialize(sequence_lexigram)
      @sequence_lexigram = sequence_lexigram
      @sequence_lexigram= ()
  end

  def lexigram_sequence
    initialize(lexigram_sequence)
      @lexigram_sequence = lexigram_sequence
      @lexigram_sequence= ()
  end

  def lexigram_sequenced
    initialize(lexigram_sequenced)
      @lexigram_sequenced = lexigram_sequenced
      @lexigram_sequenced= ()
  end


#  def lexigram_sequencer(sequencetext)
#    initialize(lexigram_sequencer)
#      lexigram_sequencer(sequencetext) = lexigram_sequencer(@sequencetext)
#  end


end
