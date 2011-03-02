class SequencerController < ApplicationController
  include Apotomo::Rails::ControllerMethods

  has_widgets do |root|
    root << widget(:sequencer)
    root << widget(:sequence_created)
    root << widget(:anagram)
  end

  def display
  end
  
end
