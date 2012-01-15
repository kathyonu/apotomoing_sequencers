#!/usr/bin/env ruby -w
module Searchtext

  include Textual

  # this module generates the text sequence from the user entry,
  # then searches the sequence_text column in the database : code finished on 20111225

  puts "Searchtext Module has included the Textual module"  # for use in console or server real time reporting of usage

  attr_accessor :sequences
# attr_accessor :sequencetext
  attr_accessor :text_sequence
  attr_accessor :text_sequences


    # text_sequencer(sequencetext) generates the sequence_text from any sequencetext entered, then
    # if a text sequence is generated it goes on to search the database for all matches    Note: an entry of   ") # ! \ ( ^ )_-"   produces no letters
  def text_searcher(sequencetext)
    @sequences = []
    @text_sequence = ""
    @sequencetext = sequencetext
    @sequencetext.extend Textual
    @sequencetextualed = @sequencetext.to_textual
    @sequencetextualed.extend Textual
    @sequencetextdecommaed = @sequencetextualed.de_comma
    @sequencetextdecommaed.extend Textual
    @sequencetextdespaced = @sequencetextdecommaed.de_space
    @sequencetextdespaced.extend Textual
    @text_sequence = text_sequencer(sequencetext)
    if (@text_sequence) == ("") then
      @sequences = ["no letters remain after processing"]
    else
      @sequences = Sequence.find_all_by_sequence_text(@text_sequence)  # Array
     end
  end

  class String
    self.extend Textual
  end
  
  class Sequencetext
    include Textual
  end
  
end
$Searchtext = Searchtext
