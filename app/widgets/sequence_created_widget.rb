class SequenceCreatedWidget < Apotomo::Widget
  responds_to_event :submit, :from => :anagram, :with => :write, :on => :sequence_created

  after_add do |me, parent|
    me.root.respond_to_event :typing, :from => :anagram, :with => :sequence_created, :on => :sequence_created
    me.root.respond_to_event :typing, :from => :anagram, :with => :sequence_creation, :on => :sequence_created
    me.root.respond_to_event :typing, :from => :anagram, :with => :sequence_complete, :on => :sequence_created
    me.root.respond_to_event :typing, :from => :anagram, :with => :sequence_lexigram, :on => :sequence_created
    me.root.respond_to_event :typing, :from => :anagram, :with => :sequence_singular, :on => :sequence_created
  end
  
  def sequence_created(anagram)
    anagram = @anagram.text
    @sequence_created = anagram.to_textual.de_comma.strip   # this is not right yet
    trigger = :typing

    render :view => :sequence_created
  end

  def sequence_creation(sequence_created)
    @sequence_creation = sequence_created.de_space

    render :view => :sequence_creation
  end

  def sequence_complete(sequence_created)
    @sequence_complete = sequence_created.split(//).sort.join.strip

    render :view => sequence_complete
  end

  def sequence_lexigram(sequence_created)
	@sequence_lexigram = sequence_created.split(//).sort.join.strip.reverse  # TODO complete the Lexigram code, meanwhile substitute the reverse sequence as the dataum

    render :view => sequence_lexigram
  end

  def sequence_singular(sequence_created)
    @sequence_singular = sequence_complete.squeeze

    render :view => sequence_singular
  end

  def write
    @sequence_created = Anagram.text.to_textual.de_comma.strip               # some codes are not right yet, this one needs to grab the Anagram.text attribute, process it through to_textual.de_comma.strip, passing the result to @sequence_created
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
