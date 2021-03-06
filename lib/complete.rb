#!/usr/bin/env ruby -w
module Complete
 
  include Textual

  puts "Complete Module has included the Textual module"   # for use in console

  attr_accessor :sequencetext
  attr_accessor :complete_sequence
  attr_accessor :complete_sequenced
    
  def complete_sequenced
    @complete_sequenced = complete_sequencer(sequencetext)
  end

  ### complete_sequencer(sequencetext) generates the sequence_complete from any sequencetext entered
  def complete_sequencer(sequencetext)
    @sequencetext = sequencetext
    @sequencetext.extend Textual
    #puts "at line 20 is @sequencetext is tainted ? " + @sequencetext.tainted?.to_s   # => :false
    @sequencetextualed = @sequencetext.to_textual
    @sequencetextualed.extend Textual
    #puts "at line 23 the result of @sequencetext.to_textual : " + "#{@sequencetextualed}"
    @sequencetextdecommaed = @sequencetextualed.de_comma
    @sequencetextdecommaed.extend Textual
    #puts "at line 26 the result of @sequencetext.to_textual.de_comma : " + "#{@sequencetextdecommaed}"
    @sequencetextdespaced = @sequencetextualed.de_comma.gsub(/\s+/, "")
    #puts "at line 28 the result of @sequencetext.to_textual.de_comma.de_space : " + "#{@sequencetextdespaced}"
    @complete_sequence = ""
    @complete_sequence = @sequencetextdecommaed.split(//).sort().join.strip
    if (@complete_sequence.to_s) === ("") then
      @complete_sequence = "no letters remain after processing"
    else
      @complete_sequence
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
$Complete = Complete
