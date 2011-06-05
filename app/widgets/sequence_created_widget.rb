class SequenceCreatedWidget < Apotomo::Widget
  helper ApplicationHelper
  
  responds_to_event :newSequenceCreated, :with => :update, :passing => :root
  #responds_to_event :submit, :from => :anagram, :with => :submit, :on => :anagram
  responds_to_event :sequence_created

  def form
    render
  end

  def sequence_text(evt)
    anagram_text_entry = evt[:anagram_text]
    @sequence_text = anagram_text_entry.to_textual.de_comma.strip

    render :view => :sequence_text
  end

  def sequence_creation(sequence_text)
    @sequence_creation = sequence_text.de_space

    render :view => :sequence_creation
  end

  def sequence_complete(sequence_text)
    @sequence_complete = sequence_text.split(//).sort.join.strip

    render :view => :sequence_complete
  end

  # TODO complete the lexigram algorithm to code, meanwhile substitute the reverse sequence as the dataum
  def sequence_lexigram(sequence_text)
    @sequence_lexigram = sequence_text.split(//).sort.join.strip.reverse

    render :view => :sequence_lexigram
  end

  def sequence_singular(sequence_complete)
    @sequence_singular = sequence_complete.squeeze

    render :view => :sequence_singular
  end

  # TODO complete the lexigram algorithm to code, meanwhile substitute the reverse sequence as the dataum
  def submit(evt)
    anagram = Anagram.new(evt[:id])
	
   #anagram = Anagram.find(evt[:id])
	anagram_text = anagram.anagram_text
    @sequence_text = anagram_text.to_textual.de_comma.strip 
	@sequence_creation = sequence_text.de_space
    @sequence_complete = sequence_text.split(//).sort.join.strip
	@sequence_lexigram = sequence_text.split(//).sort.join.strip.reverse
	@sequence_singular = sequence_complete.squeeze

    update :display
  end

  def update(evt)

    replace :state => :display
  end
  
  def display

    render
  end
end
