class SequencetextsController < ActionController::Base
  include Apotomo::Rails::ControllerMethods

  attr_accessible :sequencetext
  
  def sequencetext
    initialize(sequencetext)
      @sequencetext = sequencetext
      @sequencetext= ()
  end

end
