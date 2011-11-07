class SequencesController < ApplicationController
  include ApplicationHelper
  
  attr_accessor :sequencetext
  attr_accessor :text_sequenced
  attr_accessor :creation_sequenced
  attr_accessor :complete_sequenced
  attr_accessor :lexigram_sequenced
  attr_accessor :singular_sequenced
  
  respond_to :html, :js
  
  # GET /sequences
  # GET /sequences.xml
  def index
    @sequences = Sequence.order("id DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sequences }
    end
  end

  # GET /sequences/1
  # GET /sequences/1.xml
  def show
    @sequence = Sequence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sequence }
    end
  end
  
  # GET /sequences/new
  # GET /sequences/new.xml
  def new
    @sequence = Sequence.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sequence }
    end
  end

  # GET /sequences/1/edit
  def edit
    @sequence = Sequence.find(params[:id])
  end

  # POST /sequences
  # POST /sequences.xml
  def create
    @sequence = Sequence.new(params[:sequence])
    respond_to do |format|
      if @sequence.save
        puts "\n Your seuqence id is #{@sequence.id}"  # console and development use
        format.html { redirect_to(@sequence, :id => @sequence.id, :notice => "Your entry was successfully created to the database as ..") }       # THIS WORKS
       #format.html { respond_with(@sequence, :status => :created, :location => @sequence, :notice => "Your entry was successfully created to the database as ..") }                           # THIS WORKS
       #format.html { redirect_to(@sequence, :id => @sequence.id, :notice => "Your entry was successfully created to the database as ..") }
       #format.html { redirect_to(:action => "show", :id => @sequence.id, :notice => 'Sequence was successfully updated.') }
       #format.html # { redirect_to(:action => :show, :id => @sequence.id, :status => :created, :notice => 'Sequence was successfully created.') }
        format.xml  { render :xml => @sequence, :status => :created, :location => @sequence }
       # format.js  # { redirect_to(:action => "show", :id => @sequence.id) }
                    # appears to do all properly per server 
                    # except : Processing by SequencesController#show as JS          < why JS ? 
                    # except : Page does not refresh with show, after processing, yet it is rendered per server

### \/  almost works
#       format.js   { redirect_to(:action => "show", :id => @sequence.id and return ) }  # this works / appears to do all properly per server, but, page does not refresh with show
        #format.js   { redirect_to sequence_url(@sequence) }           # this appears to do all properly, but, page does not refresh with show
#       format.js   { redirect_to sequence_url(@sequence, :status => :created )}
 #      format.js   { redirect_to(request.env["HTTP_REFERER"]) }
  #     format.js   { redirect_to :action => "show", :id => "#{@sequence.id}"}
   #    format.js   { redirect_to(:action=>"create", :controller=>"sequences") }
    #   format.js   { redirect_to(@sequence, :id => "#{@sequence.id}", :notice => 'Sequence was successfully created.' )}
     #  format.js   { redirect_to(:action=>"show", :id => "#{@sequence.id}", :notice => 'Sequence was successfully created.' )}
      ##format.js { redirect_to(@sequence, :status => :created, :location => @sequence, :notice => 'Sequence was successfully created.') and return }
     ###format.js { redirect_to(@sequence, :status => :created, :location => @sequence, :notice => 'Sequence was successfully created.') and return }


       #format.js   { render :js => @sequence, :status => :created, :location => @sequence }
       #format.js {  render :action => 'show.html.erb', :id => "#{@sequence.id}", :layout => 'true' } and return
       #format.js { ( redirect_to(@sequence, :action => 'show.html.erb', :layout => 'true', :notice => 'Sequence was successfully created.') ) }
       #format.js   { render :html => @sequence, :status => :created, :location => @sequence }
       #format.js   { render :js => @sequence, :status => :created, :location => @sequence }
       #format.js   { redirect_to(@sequence, :notice => 'Sequence was successfully created.') }
       #format.js { format.html { redirect_to(@sequence, :notice => 'Sequence was successfully created.') } }
      ##format.js { ( redirect_to(@sequence, :action => 'show', :id => params[:id], :layout => 'true', :notice => 'Sequence was successfully created.') ) }
       #format.js { ( render :action => 'show.html.erb', :id => params[:id], :notice => 'Sequence was successfully created.') }
       #format.js {  render :action => 'show', :id => "#{@sequence.id}", :layouts => 'true' } and return
       #format.js { redirect_to("/sequences/show/" => @sequence, :notice => 'Sequence was successfully created.') }
       #format.js { redirect_to(:display => "show", :status => :created, :location => @sequence, :notice => 'Sequence was successfully created.') }
       #format.js { redirect_to(@sequence, :location => @sequence, :notice => 'Sequence was successfully created.') }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sequence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sequences/1
  # PUT /sequences/1.xml
  def update
    @sequence = Sequence.find(params[:id])

    respond_to do |format|
      if @sequence.update_attributes(params[:sequence])
        format.html { redirect_to(@sequence, :notice => 'Sequence was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sequence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sequences/1
  # DELETE /sequences/1.xml
  def destroy
    @sequence = Sequence.find(params[:id])
    @sequence.destroy

    respond_to do |format|
      format.html { redirect_to(sequences_url) }
      format.xml  { head :ok }
    end
  end

end
