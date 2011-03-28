class SequenceCreatedWidget < Apotomo::Widget
  helper ApplicationHelper

  responds_to_event :submit, :from => :anagram, :with => :submit, :on => :sequence_created

#  after_add do |root|
#    root.respond_to_event :submit, :from => :anagram, :with => :submit, :on => :sequence_created
#    root.respond_to_event :submit, :from => :anagram, :with => :sequence_created, :on => :sequence_created
#    root.respond_to_event :submit, :from => :anagram, :with => :sequence_creation, :on => :sequence_created
#    root.respond_to_event :submit, :from => :anagram, :with => :sequence_complete, :on => :sequence_created
#    root.respond_to_event :submit, :from => :anagram, :with => :sequence_lexigram, :on => :sequence_created
#    root.respond_to_event :submit, :from => :anagram, :with => :sequence_singular, :on => :sequence_created
#    root.respond_to_event :typing, :from => :anagram, :with => :sequence_created, :on => :sequence_created
#    root.respond_to_event :typing, :from => :anagram, :with => :sequence_creation, :on => :sequence_created
#    root.respond_to_event :typing, :from => :anagram, :with => :sequence_complete, :on => :sequence_created
#    root.respond_to_event :typing, :from => :anagram, :with => :sequence_lexigram, :on => :sequence_created
#    root.respond_to_event :typing, :from => :anagram, :with => :sequence_singular, :on => :sequence_created
#  end
  
  def sequence_created(evt)
    anagram = Anagram.find evt[:anagram.text]
    @sequence_created = anagram.to_textual.de_comma.strip   # this is not right yet

    render :sequence_created
  end

  def sequence_creation(sequence_created)
    @sequence_creation = sequence_created.de_space

    render :sequence_creation
  end

  def sequence_complete(sequence_created)
    @sequence_complete = sequence_created.split(//).sort.join.strip

    render :sequence_complete
  end

  def sequence_lexigram(sequence_created)
	@sequence_lexigram = sequence_created.split(//).sort.join.strip.reverse  # TODO complete the Lexigram code, meanwhile substitute the reverse sequence as the dataum

    render :sequence_lexigram
  end

  def sequence_singular(sequence_complete)
    @sequence_singular = sequence_complete.squeeze

    render :sequence_singular
  end

  def submit(evt)
    anagram = Anagram.find(evt[:id])
    @sequence_created = (anagram.text).to_textual.de_comma.strip               # some codes are not right yet, this one needs to grab the Anagram.text attribute, process it through to_textual.de_comma.strip, passing the result to @sequence_created
    @sequence_creation = sequence_created.de_space
    @sequence_complete = sequence_created.split(//).sort.join.strip
	@sequence_lexigram = sequence_created.split(//).sort.join.strip.reverse  # TODO complete the lexigram code, meanwhile substitute the reverse sequence as the dataum
    @sequence_singular = sequence_complete.squeeze
    update :display
  end

  def display
    render
  end

end
