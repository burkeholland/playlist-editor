class TracksController < ApplicationController
  # GET /tracks
  # GET /tracks.json
  def index
    @tracks = Track.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @tracks.to_json(:methods => [:edit]) }
    end
  end

  # GET /tracks/1
  # GET /tracks/1.json
  def show
    @track = Track.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @track }
    end
  end

  # GET /tracks/new
  # GET /tracks/new.json
  def new
    @track = Track.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @track }
    end
  end

  # GET /tracks/1/edit
  def edit
    @track = Track.find(params[:id])
  end

  # POST /tracks
  # POST /tracks.json
  def create
    @track = Track.new(:album => params[:album], :artist => params[:artist], :track => params[:track],
    :album_art_url => params[:album_art_url], :track_mp3_url => params[:track_mp3_url])

    respond_to do |format|
      if @track.save
        format.html { redirect_to @track, :notice => 'Track was successfully created.' }
        format.json { render :json => @track, :status => :created, :location => @track }
      else
        format.html { render :action => "new" }
        format.json { render :json => @track.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tracks/1
  # PUT /tracks/1.json
  def update
    @track = Track.find(params[:id])

    respond_to do |format|
      if @track.update_attributes(:album => params[:album], :artist => params[:artist], :track => params[:track], :album_art_url => params[:album_art_url], :track_mp3_url => params[:track_mp3_url])
        format.html { redirect_to @track, :notice => 'Track was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @track.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tracks/1
  # DELETE /tracks/1.json
  def destroy
    @track = Track.find(params[:id])
    @track.destroy

    respond_to do |format|
      format.html { redirect_to tracks_url }
      format.json { head :no_content }
    end
  end
end
