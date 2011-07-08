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
    anagram = Anagram.new(evt[:id])           # or :   anagram = Anagram.find(evt[:id])
	anagram_text = anagram.anagram_text
    text_sequence = anagram_text.to_textual.de_comma.strip 
	creation_sequence = text_sequence.de_space
    complete_sequence = text_sequence.split(//).sort.join.strip
	lexigram_sequence = text_sequence.split(//).sort.join.strip.reverse
    singular_sequence = complete_sequence.squeeze
    @sequence_created = sequence_created.update_attributes(
    :sequence_text => text_sequence,
    :sequence_creation => complete_sequence, 
    :sequence_commplete => complete_sequence, 
    :sequence_lexigram => lexigram_sequence, 
    :sequence_singular => singular_sequence
    )
    trigger :sequence_text
	trigger :sequence_creation
    trigger :sequence_complete
    trigger :sequence_lexigram
	trigger :sequence_singular
    trigger :newSequenceCreated

    replace :state => :display
  end

  def update(evt)

    replace :state => :display
  end
  
end
