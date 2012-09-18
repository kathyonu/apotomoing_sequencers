#!/usr/bin/env ruby -w
module Searchcreation

  include Textual

  # this module generates the creation sequence from the user entry,
  # then searches the sequence_creation column in the database : code finished on 20111225

  puts "Searchcreation Module has included the Textual module"  # for use in console or server real time reporting of usage

  attr_accessor :sequences
  attr_accessor :sequencetext
  attr_accessor :creation_sequence

    # creation_searcher(sequencetext) generates the sequence_creation from any sequencetext entered, then
    # if a creation sequence is generated it goes on to search the database for all matches    Note: an entry of   ") # ! \ ( ^ )_-"   produces no letters
  def creation_searcher(sequencetext)
    @sequencetext = sequencetext
    @sequences = []
    @creation_sequence = ""
    @sequencetext.extend Textual
    @sequencetextualed = @sequencetext.to_textual
    @sequencetextualed.extend Textual
    @sequencetextdecommaed = @sequencetextualed.de_comma
    @sequencetextdecommaed.extend Textual
    @creation_sequence = creation_sequencer(@sequencetextdecommaed)
    if (@creation_sequence === "") then
      @sequences = ["no letters remain after processing"]
    else
      @sequences = Sequence.find_all_by_sequence_creation(@creation_sequence)  # Array
     end
  end

  class String
    self.extend Textual
  end
  
  class Sequencetext
    include Textual
  end
  
end
$Searchcreation = Searchcreation
