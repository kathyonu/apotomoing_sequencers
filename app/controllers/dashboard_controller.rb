class DashboardController < ApplicationController
  include Apotomo::Rails::ControllerMethods

  has_widgets do |root|
    root << widget(:anagram)
    root << widget(:sequence_created)
    root << widget(:sequencer)
    root.respond_to_event :newSequenceCreated, :with => :submit, :on => :anagram, :passing => :root
  end
 
  def index
  end

end
