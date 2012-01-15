class SingularsController < ApplicationController

   attr_accessor :sequences
   attr_accessor :singulars_count

    # GET /singulars
  def index
    @sequences = self.singular_searcher(params[:sequencetext])
    @singulars_count = "#{@sequences.count.to_s}"
  end

  def display
  end

end
