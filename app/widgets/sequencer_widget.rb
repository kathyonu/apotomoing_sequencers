class SequencerWidget < Apotomo::Widget
  helper ApplicationHelper

  responds_to_event :from => :anagram, :with => :submit, :on => :anagram
  
  def display
    render
  end

end
