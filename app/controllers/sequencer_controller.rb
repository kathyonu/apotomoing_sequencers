class SequencerController < ApplicationController
  include Apotomo::Rails::ControllerMethods

  has_widgets do |root|
    root << widget(:sequencer_widget, 'begin', :display)
    root << widget(:sequence_created_widget, 'creator', :display)
    root << widget(:anagram_widget, 'words', :display)
  end

#  has_widgets do |root|
#    root << parent_widget = widget(:sequence_created_widget, 'creator', :display)
#    parent_widget << child_widget = widget(:anagram_widget, 'words', :display)
#  end

  def display
  end
  
end
