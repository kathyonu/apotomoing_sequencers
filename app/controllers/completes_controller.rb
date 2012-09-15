class CompletesController < ApplicationController

   attr_accessor :sequences
#  attr_accessor :sequencetext   ## added as test 20120915
   attr_accessor :completes_count

    # GET /completes
  def list
    @sequences = self.complete_searcher(params[:sequencetext])
    @completes_count = "#{@sequences.count.to_s}"
  end

  def display
  end

end
