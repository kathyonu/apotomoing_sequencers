class SequenceCreatedWidget < Apotomo::Widget
  helper ApplicationHelper
  
  #responds_to_event :newSequenceCreated, :with => :update, :passing => :root
  #responds_to_event :submit, :from => :sequence_created, :with => :submit, :on => :anagram
  responds_to_event :submit

  def display
    render
  end

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
    #@sequence_created = SequenceCreated.new(evt[:id]).save           # or anagram = Anagram.find(evt[:id])
	@sequence_created = SequenceCreated.new(:sequence_text => evt[:sequence_text], :sequence_creation => evt[:sequence_creation], :sequence_complete => evt[:sequence_complete], :sequence_lexigram => evt[:sequence_lexigram], :sequence_singular => evt[:sequence_singular])
    if @sequence_created.update_attributes(evt[:sequence_created])
      replace :state => :display
    else
      replace :state => :display
	 #render :view => :display
    end
  end

  def update(evt)

    replace :state => :display
  end
  
end
