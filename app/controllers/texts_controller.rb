class TextsController < ApplicationController

  attr_accessor :sequences
  attr_accessor :texts_count

    # GET /lexigrams
  def list
    @sequences = self.text_searcher(params[:sequencetext])
    @texts_count = "#{@sequences.count.to_s}"
  end

  def display
  end

end
