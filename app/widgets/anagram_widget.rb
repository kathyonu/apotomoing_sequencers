class AnagramWidget < Apotomo::Widget

  after_add do
    root.respond_to_event :submit, :with => :write
    root.respond_to_event :typing, :from => :anagram, :with => :sequence_created, :on => :sequence_created
    root.respond_to_event :typing, :from => :anagram, :with => :sequence_creation, :on => :sequence_created
    root.respond_to_event :typing, :from => :anagram, :with => :sequence_complete, :on => :sequence_created
    root.respond_to_event :typing, :from => :anagram, :with => :sequence_lexigram, :on => :sequence_created
    root.respond_to_event :typing, :from => :anagram, :with => :sequence_singular, :on => :sequence_created
  end
  
  def anagram
    @anagram = Anagram.new
	render
  end

  def display
    @anagrams = Anagram.find:all
    render
  end
  
  def write
    @anagram = Anagram.new(params(:anagram))
	@anagram = anagram.update_attributes(params(:anagram))
    @anagrams = Anagram.find:all
    update :display
  end

end
