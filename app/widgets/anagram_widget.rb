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
  
  def submit
    @anagram = Anagram.new(params[:anagram])
	  respond_to do
        if @anagram.save
          @anagram = Anagram.new
        else
          @anagram = Anagram.edit		
        end
      end
	@anagram = anagram.update_attributes(params[:anagram])
    @anagrams = Anagram.find:all
    update :display
  end

end
