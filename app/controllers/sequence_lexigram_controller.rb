class SequenceLexigramController < ActionController::Base

  require './lib/sequencerings/lexigram.rb'
  require './lib/sequencerings/textual.rb'
  require './lib/sequencerings/textual-fibering-methods.rb'

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


end
