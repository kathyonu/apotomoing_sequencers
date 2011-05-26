class SequenceCreatedWidget < Apotomo::Widget
  helper ApplicationHelper
  
  responds_to_event :newSequenceCreated, :with => :update, :passing => :root
  responds_to_event :submit, :from => :anagram, :with => :submit, :on => :sequence_created
  responds_to_event :sequence_created

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
  
  def form
    render
  end

  def sequence_created(event)
    anagram_text = event[:text]
    @sequence_created = anagram_text.to_textual.de_comma.strip

    render :view => :sequence_created
  end

  def sequence_creation(sequence_created)
    @sequence_creation = sequence_created.de_space

    render :view => :sequence_creation
  end

  def sequence_complete(sequence_created)
    @sequence_complete = sequence_created.split(//).sort.join.strip

    render :view => :sequence_complete
  end

  # TODO complete the lexigram algorithm to code, meanwhile substitute the reverse sequence as the dataum
  def sequence_lexigram(sequence_created)
    @sequence_lexigram = sequence_created.split(//).sort.join.strip.reverse

    render :view => :sequence_lexigram
  end

  def sequence_singular(sequence_complete)
    @sequence_singular = sequence_complete.squeeze

    render :view => :sequence_singular
  end

  # TODO complete the lexigram algorithm to code, meanwhile substitute the reverse sequence as the dataum
  def submit(event)
    anagram = Anagram.find(event[:id])
	anagram_text = event[:text]
    @sequence_created = anagram_text.to_textual.de_comma.strip 
	@sequence_creation = sequence_created.de_space
    @sequence_complete = sequence_created.split(//).sort.join.strip
	@sequence_lexigram = sequence_created.split(//).sort.join.strip.reverse
	@sequence_singular = sequence_complete.squeeze

    update :display
  end

  def update(event)

    replace :state => :display
  end
  
  def display

    render
  end
end
