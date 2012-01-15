#!/usr/bin/env ruby -w
module Searchcomplete

  include Textual

  # this module generates the complete sequence from the user entry,
  # then searches the sequence_complete column in the database : code finished on 20111225

  puts "Searchcomplete Module has included the Textual module"  # for use in console or server real time reporting of usage

  attr_accessor :sequences
# attr_accessor :sequencetext
  attr_accessor :complete_sequence
  attr_accessor :complete_sequences


    # complete_sequencer(sequencetext) generates the sequence_complete from any sequencetext entered, then
    # if a complete sequence is generated it goes on to search the database for all matches    Note: an entry of   ") # ! \ ( ^ )_-"   produces no letters
  def complete_searcher(sequencetext)
    @sequences = []
    @complete_sequence = ""
    @sequencetext = sequencetext
    @sequencetext.extend Textual
    @sequencetextualed = @sequencetext.to_textual
    @sequencetextualed.extend Textual
    @sequencetextdecommaed = @sequencetextualed.de_comma
    @sequencetextdecommaed.extend Textual
    @sequencetextdespaced = @sequencetextdecommaed.de_space
    @sequencetextdespaced.extend Textual
    @complete_sequence = complete_sequencer(@sequencetextdecommaed)
    if (@complete_sequence) == ("") then
      @sequences = ["no letters remain after processing"]
    else
      @sequences = Sequence.find_all_by_sequence_complete(@complete_sequence)  # Array
     end
  end

  class String
    self.extend Textual
  end
  
  class Sequencetext
    include Textual
  end
  
end
$Searchcomplete = Searchcomplete
