class ItemsController < ApplicationController
  # GET /items
  def index
    @items = Item.all

    respond_to do |format|
      format.html
    end
  end

  # GET /items/1
  def show
    @item = Item.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  # GET /items/new
  def new
    @item = Item.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /items/1/edit
  def edit
    @item = Item.find(params[:id])
  end

  # POST /items
  def create
    @item = Item.new(params[:item])

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /items/1
  def update
    @item = Item.find(params[:id])

    respond_to do |format|
      if @item.update_attributes(params[:item])
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /items/1
  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html { redirect_to items_url }
    end
  end
  
  def move_to_start
	@item = Item.find(params[:id])
	move_to_start(@item.id)
	
	respond_to do |format|
		format.html { redirect_to items_url }
	end
  end
  
  def move_to_end
	@item = Item.find(params[:id])
	move_to_end(@item.id)
	
	respond_to do |format|
		format.html { redirect_to items_url }
	end
  end
	
end
