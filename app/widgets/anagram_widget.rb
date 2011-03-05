class AnagramWidget < Apotomo::Widget

  after_add do
    root.respond_to_event :submit
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

  def edit
    @anagram = Anagram.find(params[:id])
    render :view => :edit
  end
  
  def submit(evt)
    Anagram.new(:text => evt[:text]).save
    @anagram = anagram.update_attributes(:text => evt[:text])

    @anagrams = Anagram.find(:all)
    replace :view => :display
  end

end
