#!/usr/bin/env ruby -w
module Creation
 
  include Textual

  puts "Creation Module has included the Textual module"   # for use in console

  attr_accessor :sequencetext
  attr_accessor :creation_sequence
  attr_accessor :creation_sequenced
    
  def creation_sequenced
    @creation_sequenced = creation_sequencer(sequencetext)
  end

  ### creation_sequencer(sequencetext) generates the sequence_creation from any sequencetext entered
  def creation_sequencer(sequencetext)
    @sequencetext = sequencetext
    @sequencetext.extend Textual
    # puts "at line 20 sequencetext is tainted ? " + sequencetext.tainted?.to_s   # => :false
    @sequencetextualed = @sequencetext.to_textual
    @sequencetextualed.extend Textual
    # puts "at line 23 the result of sequencetext.to_textual : " + "#{@sequencetextualed}"
    @sequencetextdecommaed = @sequencetextualed.de_comma
    @sequencetextdecommaed.extend Textual
    # puts "at line 26 the result of sequencetext.to_textual.de_comma : " + "#{@sequencetextdecommaed}"
    @sequencetextdespaced = @sequencetextdecommaed.de_space
    # puts "at line 28 the result of @sequencetextdespace : " + "#{@sequencetextdespaced}"
    @creation_sequence = ""
    @creation_sequence = @sequencetextdespaced
    # puts "at line 35 the @ creation_sequence variable is : " + "#{@creation_sequence}"
    if (@creation_sequence.to_s) === ("") then
      @creation_sequence = "no letters remain after processing"
    else
      @creation_sequence
    end
  end
  
  class String
  # include Textual
    self.extend Textual
  end
  
  class Sequencetext
    include Textual
  end
  
end
$Creation = Creation
