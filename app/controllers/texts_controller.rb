class TextsController < ApplicationController

  attr_accessor :sequences
 #attr_accessor :sequence_text         # not required ? : 20120127
  attr_accessor :texts_count

    # GET /texts
  def list
    @sequences = self.text_searcher(params[:sequencetext])
	@sequencetext = sequencetext
    @texts_count = "#{@sequences.count.to_s}"
  end

  def display
  end

end
