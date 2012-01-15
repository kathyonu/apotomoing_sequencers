class CreationsController < ApplicationController

  attr_accessor :sequences
  attr_accessor :creations_count

    # GET /creations
  def list
    @sequences = self.creation_searcher(params[:sequencetext])
    @creations_count = "#{@sequences.count.to_s}"
  end

  def display
  end

end
