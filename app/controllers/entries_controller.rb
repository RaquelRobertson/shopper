class EntriesController < ApplicationController

  helper_method :list, :entry, :entries

  # GET /list/:list_id/entries
  # GET /list/:list_id/entries.json
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: entries }
    end
  end

  # GET /list/:list_id/entries/1
  # GET /list/:list_id/entries/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: entry }
    end
  end

  # GET /list/:list_id/entries/new
  # GET /list/:list_id/entries/new.json
  def new
    @entry = list.entries.build.tap do |entry|
      entry.item = Item.new
    end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: entry }
    end
  end

  # GET /list/:list_id/entries/1/edit
  def edit
  end

  # POST /list/:list_id/entries
  # POST /list/:list_id/entries.json
  def create
    @entry = list.entries.build(params[:entry])

    respond_to do |format|
      if entry.save
        format.html { redirect_to list, notice: 'Entry was successfully created.' }
        format.json { render json: entry, status: :created, location: [list, entry] }
      else
        format.html { render action: "new" }
        format.json { render json: entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /list/:list_id/entries/1
  # PUT /list/:list_id/entries/1.json
  def update
    respond_to do |format|
      if entry.update_attributes(params[:entry])
        format.html { redirect_to list, notice: 'Entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list/:list_id/entries/1
  # DELETE /list/:list_id/entries/1.json
  def destroy
    entry.destroy

    respond_to do |format|
      format.html { redirect_to list_entries_url(list) }
      format.json { head :no_content }
    end
  end

  protected

  def entries
    @entries = list.entries
  end

  def entry
    @entry ||= list.entries.find(params[:id]).tap do |entry|
      entry.item ||= Item.new
    end
  end

  def list
    @list ||= List.find(params[:list_id])
  end

end
