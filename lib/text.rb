#!/usr/bin/env ruby -w
module Text
 
  include Textual

  puts "Text Module has included the Textual module"  # for use in console

  attr_accessor :sequencetext
  attr_accessor :text_sequence
  attr_accessor :text_sequenced

  def text_sequenced
    @text_sequenced = text_sequencer(sequencetext)
  end

  ### complete_sequencer(sequencetext) generates the sequence_complete from any sequencetext entered, and its letter-count
  def text_sequencer(sequencetext)
    @sequencetext = sequencetext
    @sequencetext.extend Textual
    @text_sequence = ""
    #puts "at line 20 sequencetext is tainted ? " + sequencetext.tainted?.to_s  # => :false
    @sequencetextualed = @sequencetext.to_textual
    @sequencetextualed.extend Textual
    #puts "at line 23 the result of @sequencetext.to_textual : " + "#{@sequencetextualed}"
	@sequencetextdecommaed = @sequencetextualed.de_comma
	@sequencetextdecommaed.extend Textual
    #puts "at line 26 the result of @sequencetext.to_textual.de_comma : " + "#{@sequencetextdecommaed}"
    @sequencetextdespaced = @sequencetextualed.de_comma.gsub(/\s+/, "")
    #puts "at line 28 the result of @sequencetext.to_textual.de_comma.de_space : " + "#{@sequencetextdespaced}"
    @text_sequence = ""
    @text_sequence = @sequencetextualed.de_comma
    #puts "at line 32 the @ text_sequence variable is : " + @text_sequence
    if (@text_sequence.to_s) == ("") then
      @text_sequence = "no letters remain after processing"
    else
      @text_sequence
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
$Text = Text
