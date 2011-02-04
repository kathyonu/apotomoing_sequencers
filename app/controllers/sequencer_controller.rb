class SequencerController < ApplicationController
  include Apotomo::Rails::ControllerMethods

  has_widgets do |root|
    root << parent_widget = widget(:sequence_created_widget, 'creator', :display)
    parent_widget << child_widget = widget(:anagram_widget, 'words', :display_form)
  end

  def index
  end
  
end
