class LexigramsController < ApplicationController

   attr_accessor :sequences
  #attr_accessor :sequencetext         # not required ? : 20120127
   attr_accessor :lexigrams_count

    # GET /lexigrams
  def list
    @sequences = self.lexigram_searcher(params[:sequencetext])
    @lexigrams_count = "#{@sequences.count.to_s}"
  end

  def display
  end

end
