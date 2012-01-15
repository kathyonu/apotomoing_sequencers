class Sequence < ActiveRecord::Base

  attr_accessible :singular_sequences, :lexigram_sequences, :sequence_text, :sequence_creation, :sequence_complete, :sequence_lexigram, :sequence_singular, :sequence_lense, :description, :reference, :anagram, :name, :phrase, :research, :external, :internal

# taken out of sequences controller as a group, and the gig still works
# we have the methods in the /lib/singularsearch.rb file.

 
  # GET /sequence_singular
#  def singular_searched(sequencetext)
#    @singular_sequences = singular_searcher(sequencetext)
    
#    respond_to do |format|
#      format.html # singular_searched.html.erb
#    end
#  end
  
  # GET /singular_sequences
  def singular_searcher(sequencetext)
    @sequencetext = sequencetext
    @sequence_singular = sequencetext.to_textual.split(//).sort.join.strip.squeeze
    @singular_sequences = Sequence.find_by_sequence_singular(@sequence_singular)
  end



 
  # GET /sequence_lexigram
#  def lexigram_searched(sequencetext)
#    @lexigram_sequences = lexigram_searcher(sequencetext)
    
#    respond_to do |format|
#      format.html # lexigram_searched.html.erb
#    end
#  end
  
  # GET /singular_sequences
  def lexigram_searcher(sequencetext)
    @sequencetext = sequencetext
    @sequence_lexigram = lexigram_sequencer(sequencetext)
    @lexigram_sequences = Sequence.find_by_sequence_lexigram(@sequence_lexigram)
  end

end
