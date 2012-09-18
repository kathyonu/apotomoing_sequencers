class SingularsController < ApplicationController

   attr_accessor :sequences
#   attr_accessor :sequencetext         # not required ? : 20120127
#   attr_accessor :sequence_text         # not required ? : 20120127
   attr_accessor :singulars_count

    # GET /singulars
  def list
    @sequences = self.singular_searcher(params[:sequencetext]) unless nil
    @singulars_count = "#{@sequences.count.to_s}"
  end

  def display
  end

end
