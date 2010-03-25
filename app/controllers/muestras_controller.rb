class MuestrasController < ApplicationController
  # GET /muestras
  # GET /muestras.xml
  
  def otra
   @muestras = Muestra.all

  end



  def index
    @muestras = Muestra.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @muestras }
    end
  end

  # GET /muestras/1
  # GET /muestras/1.xml
  def show
    @muestra = Muestra.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @muestra }
    end
  end

  # GET /muestras/new
  # GET /muestras/new.xml
  def new
    @muestra = Muestra.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @muestra }
    end
  end

  # GET /muestras/1/edit
  def edit
    @muestra = Muestra.find(params[:id])
  end

  # POST /muestras
  # POST /muestras.xml
  def create
    @muestra = Muestra.new(params[:muestra])

    respond_to do |format|
      if @muestra.save
        flash[:notice] = 'Muestra was successfully created.'
        format.html { redirect_to(@muestra) }
        format.xml  { render :xml => @muestra, :status => :created, :location => @muestra }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @muestra.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /muestras/1
  # PUT /muestras/1.xml
  def update
    @muestra = Muestra.find(params[:id])

    respond_to do |format|
      if @muestra.update_attributes(params[:muestra])
        flash[:notice] = 'Muestra was successfully updated.'
        format.html { redirect_to(@muestra) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @muestra.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /muestras/1
  # DELETE /muestras/1.xml
  def destroy
    @muestra = Muestra.find(params[:id])
    @muestra.destroy

    respond_to do |format|
      format.html { redirect_to(muestras_url) }
      format.xml  { head :ok }
    end
  end
end
