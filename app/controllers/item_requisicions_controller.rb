class ItemRequisicionsController < ApplicationController
  # GET /item_requisicions
  # GET /item_requisicions.xml
  def index
    @item_requisicions = ItemRequisicion.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @item_requisicions }
    end
  end

  # GET /item_requisicions/1
  # GET /item_requisicions/1.xml
  def show
    @item_requisicion = ItemRequisicion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @item_requisicion }
    end
  end

  # GET /item_requisicions/new
  # GET /item_requisicions/new.xml
  def new
    @item_requisicion = ItemRequisicion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @item_requisicion }
    end
  end

  # GET /item_requisicions/1/edit
  def edit
    @item_requisicion = ItemRequisicion.find(params[:id])
  end

  # POST /item_requisicions
  # POST /item_requisicions.xml
  def create
    @item_requisicion = ItemRequisicion.new(params[:item_requisicion])

    respond_to do |format|
      if @item_requisicion.save
        format.html { redirect_to(@item_requisicion, :notice => 'Item requisicion was successfully created.') }
        format.xml  { render :xml => @item_requisicion, :status => :created, :location => @item_requisicion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @item_requisicion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /item_requisicions/1
  # PUT /item_requisicions/1.xml
  def update
    @item_requisicion = ItemRequisicion.find(params[:id])

    respond_to do |format|
      if @item_requisicion.update_attributes(params[:item_requisicion])
        format.html { redirect_to(@item_requisicion, :notice => 'Item requisicion was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @item_requisicion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /item_requisicions/1
  # DELETE /item_requisicions/1.xml
  def destroy
    @item_requisicion = ItemRequisicion.find(params[:id])
    @item_requisicion.destroy

    respond_to do |format|
      format.html { redirect_to(item_requisicions_url) }
      format.xml  { head :ok }
    end
  end
end
