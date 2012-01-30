class AnagramsearchController < ApplicationController

  include Text
  
  attr_accessor :sequences
  attr_accessor :text_sequence
  attr_accessor :anagramsearch_count

    # GET /sequences by sequence subsets of the user entry
  def list
    @sequences = self.anagramsearch_searcher(params[:sequencetext])
    @sequencetext = sequencetext
    @text_sequence = text_sequencer(sequencetext)
    @anagramsearch_count = "#{@sequences.count.to_s}"
  end

  def display
  end

end
