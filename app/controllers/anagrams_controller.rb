class AnagramsController < ApplicationController
  include Apotomo::Rails::ControllerMethods

  has_widgets do |root|
    root << widget(:anagram, :anagram => @anagram)
    root << widget(:sequence_created)
  end
  
  # GET /anagrams
  # GET /anagrams.xml
  def index
    @anagrams = Anagram.order("id DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @anagrams }
    end
  end

  # GET /anagrams/1
  # GET /anagrams/1.xml
  def show
    @anagram = Anagram.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @anagram }
    end
  end

  # GET /anagrams/new
  # GET /anagrams/new.xml
  def new
    @anagram = Anagram.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @anagram }
    end
  end

  # GET /anagrams/1/edit
  def edit
    @anagram = Anagram.find(params[:id])
  end

  # POST /anagrams
  # POST /anagrams.xml
  def create
    @anagram = Anagram.new(params[:anagram])

    respond_to do |format|
      if @anagram.save
        format.html { redirect_to(@anagram, :notice => 'Anagram was successfully created.') }
        format.xml  { render :xml => @anagram, :status => :created, :location => @anagram }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @anagram.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /anagrams/1
  # PUT /anagrams/1.xml
  def update
    @anagram = Anagram.find(params[:id])

    respond_to do |format|
      if @anagram.update_attributes(params[:anagram])
        format.html { redirect_to(@anagram, :notice => 'Anagram was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @anagram.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /anagrams/1
  # DELETE /anagrams/1.xml
  def destroy
    @anagram = Anagram.find(params[:id])
    @anagram.destroy

    respond_to do |format|
      format.html { redirect_to(anagrams_url) }
      format.xml  { head :ok }
    end
  end
end
