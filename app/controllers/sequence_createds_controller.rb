class SequenceCreatedsController < ApplicationController
  include Apotomo::Rails::ControllerMethods

  has_widgets do |root|
    root << widget(:sequence_created, :sequence_created => @sequence_created)
    root << widget(:sequence_created, 'sequence_creation')
    root << widget(:sequence_created, 'sequence_complete')
    root << widget(:sequence_created, 'sequence_lexigram')
    root << widget(:sequence_created, 'sequence_singular')
    root << widget(:anagram)
  end

  # GET /sequence_createds
  # GET /sequence_createds.xml
  def index
    @sequence_createds = SequenceCreated.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sequence_createds }
    end
  end

  # GET /sequence_createds/1
  # GET /sequence_createds/1.xml
  def show
    @sequence_created = SequenceCreated.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sequence_created }
    end
  end

  # GET /sequence_createds/new
  # GET /sequence_createds/new.xml
  def new
    @sequence_created = SequenceCreated.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sequence_created }
    end
  end

  # GET /sequence_createds/1/edit
  def edit
    @sequence_created = SequenceCreated.find(params[:id])
  end

  # POST /sequence_createds
  # POST /sequence_createds.xml
  def create
    @sequence_created = SequenceCreated.new(params[:sequence_created])

    respond_to do |format|
      if @sequence_created.save
        format.html { redirect_to(@sequence_created, :notice => 'Sequence created was successfully created.') }
        format.xml  { render :xml => @sequence_created, :status => :created, :location => @sequence_created }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sequence_created.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sequence_createds/1
  # PUT /sequence_createds/1.xml
  def update
    @sequence_created = SequenceCreated.find(params[:id])

    respond_to do |format|
      if @sequence_created.update_attributes(params[:sequence_created])
        format.html { redirect_to(@sequence_created, :notice => 'Sequence created was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sequence_created.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sequence_createds/1
  # DELETE /sequence_createds/1.xml
  def destroy
    @sequence_created = SequenceCreated.find(params[:id])
    @sequence_created.destroy

    respond_to do |format|
      format.html { redirect_to(sequence_createds_url) }
      format.xml  { head :ok }
    end
  end
end
