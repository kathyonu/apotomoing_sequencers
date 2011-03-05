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
    anagram = Anagram.new(:text => evt[:text], :sequence_created_id => evt[:sequence_created_id], :description => evt[:description], :reference => evt[:reference]).save
    @anagram = anagram.update_attributes(:text => evt[:text])

    @anagrams = Anagram.find(:all)
    update :view => :display
  end

end
