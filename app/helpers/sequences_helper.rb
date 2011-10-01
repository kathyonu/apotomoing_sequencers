module SequencesHelper

require './lib/sequencerings/lexigram.rb'
require './lib/sequencerings/textual.rb'
require './lib/sequencerings/textual-fibering-methods.rb'

  def singular_sequence(sequencetext)
    entry = user_entry.to_textual.de_comma.strip
    @singular_sequence = entry.split(//).sort.join("").strip.squeeze
  end

  def sequence_text
    @sequence_text = SequenceCreated.new[:sequencetext]
  end

  def sequence_creation(sequencetext)
    @sequence_creation = sequence_text.de_space
  end

  def sequence_complete(sequencetext)
    @sequence_complete = sequence_text.split(//).sort.join.strip
  end

  def sequence_lexigram(sequencetext)
    @sequence_lexigram = lexigram_sequencer(sequencetext)
  end
  
  def sequence_singular(sequence_complete)
    @sequence_singular = sequence_complete.squeeze
  end
  
end
