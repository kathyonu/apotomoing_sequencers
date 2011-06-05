class SequencerController < ApplicationController
  include Apotomo::Rails::ControllerMethods

  has_widgets do |root|
    root << widget(:sequencer)
  end
 
  def display
  end
  
end
