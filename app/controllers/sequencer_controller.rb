class SequencerController < ApplicationController
  include Apotomo::Rails::ControllerMethods

  has_widgets do |root|
    root << widget(:sequencer_widget, 'begin', :display)
    root << widget(:sequence_created_widget, 'creator', :display, :sequence_created => @sequence_created)
    root << widget(:anagram_widget, 'words', :display, :anagram => @anagram)
  end

  def display
  end
  
end
