class SequencerWidget < Apotomo::Widget
  responds_to_event :from => :anagram, :with => :submit, :on => :anagram
  
  def display
    render
  end

end
