module SequencesHelper

include Textual

require './lib/textual-fibering-methods.rb'

  def user_entry
    @user_entry = user_entry 
  end
  
  def singular_sequence(user_entry)
    entry = user_entry.to_textual.de_comma.strip
    @singular_sequence = entry.split(//).sort.join("").strip.squeeze
  end

  def sequence_text
    @sequence_text = SequenceCreated.new[:sequence_text]
  end

  def sequence_creation(sequence_text)
    @sequence_creation = sequence_text.de_space
  end

  def sequence_complete(sequence_text)
    @sequence_complete = sequence_text.split(//).sort.join.strip
  end

  # TODO complete the lexigram algorithm to code, meanwhile substitute the reverse sequence as the dataum
  def sequence_lexigram(sequence_text)
    @sequence_lexigram = sequence_text.split(//).sort.join("").strip.reverse
  end

  def sequence_singular(sequence_complete)
    @sequence_singular = sequence_complete.squeeze
  end
  
end
