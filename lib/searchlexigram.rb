#!/usr/bin/env ruby -w
module Searchlexigram

  include Textual

  # this module generates the lexigram sequence from the user entry,
  # then searches the sequence_lexigram column in the database : code finished on 20111225

  puts "Searchlexigram Module has included the Textual module"  # for use in console or server real time reporting of usage

  attr_accessor :sequences
  attr_accessor :sequencetext
  attr_accessor :lexigram_sequence
  attr_accessor :lexigram_sequences


    # lexigram_sequencer(sequencetext) generates the sequence_lexigram from any sequencetext entered, then
    # if a lexigram sequence is generated it goes on to search the database for all matches    Note: an entry of   ") # ! \ ( ^ )_-"   produces no letters
  def lexigram_searcher(sequencetext)
    @sequences = []
    @lexigram_sequence = ""
    @sequencetext = sequencetext
    @sequencetext.extend Textual
    @sequencetextualed = @sequencetext.to_textual
    @sequencetextualed.extend Textual
    @sequencetextdecommaed = @sequencetextualed.de_comma
    @sequencetextdecommaed.extend Textual
    @sequencetextdespaced = @sequencetextdecommaed.de_space
    @sequencetextdespaced.extend Textual
	@lexigram_sequence = lexigram_sequencer(@sequencetextdecommaed)
    if (@lexigram_sequence) == ("") then
      @sequences = ["no letters remain after processing"]
    else
      @sequences = Sequence.find_all_by_sequence_lexigram(@lexigram_sequence)  # Array
     end
  end

  class String
    self.extend Textual
  end
  
  class Sequencetext
    include Textual
  end
  
end
$Searchlexigram = Searchlexigram
