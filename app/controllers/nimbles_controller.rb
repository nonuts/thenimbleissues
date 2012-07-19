
class NimblesController < ApplicationController
  # GET /nimbles
  # GET /nimbles.json
  def index
    @nimbles = Nimble.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @nimbles }
    end
  end

  # GET /nimbles/1
  # GET /nimbles/1.json
  def show
    @nimble = Nimble.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @nimble }
    end
  end

  # GET /nimbles/new
  # GET /nimbles/new.json
  def new
    @nimble = Nimble.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @nimble }
    end
  end

  # GET /nimbles/1/edit
  def edit
    @nimble = Nimble.find(params[:id])
  end

  # POST /nimbles
  # POST /nimbles.json
  def create
    @nimble = Nimble.new(params[:nimble])

    respond_to do |format|
      if @nimble.save
        format.html { redirect_to @nimble, :notice => 'Nimble was successfully created.' }
        format.json { render :json => @nimble, :status => :created, :location => @nimble }
      else
        format.html { render :action => "new" }
        format.json { render :json => @nimble.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /nimbles/1
  # PUT /nimbles/1.json
  def update
    @nimble = Nimble.find(params[:id])

    respond_to do |format|
      if @nimble.update_attributes(params[:nimble])
        format.html { redirect_to @nimble, :notice => 'Nimble was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @nimble.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /nimbles/1
  # DELETE /nimbles/1.json
  def destroy
    @nimble = Nimble.find(params[:id])
    @nimble.destroy

    respond_to do |format|
      format.html { redirect_to nimbles_url }
      format.json { head :no_content }
    end
  end
end
