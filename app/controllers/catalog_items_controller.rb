class CatalogItemsController < ApplicationController
  before_action :set_catalog_item, only: [:show, :edit, :update, :destroy]

  # GET /catalog_items
  # GET /catalog_items.json
  def index
    @catalog_items = CatalogItem.all
  end

  # GET /catalog_items/1
  # GET /catalog_items/1.json
  def show
  end

  # GET /catalog_items/new
  def new
    @catalog_item = CatalogItem.new
  end

  # GET /catalog_items/1/edit
  def edit
  end

  # POST /catalog_items
  # POST /catalog_items.json
  def create
    @catalog_item = CatalogItem.new(catalog_item_params)

    respond_to do |format|
      if @catalog_item.save
        format.html { redirect_to @catalog_item, notice: 'Catalog item was successfully created.' }
        format.json { render :show, status: :created, location: @catalog_item }
      else
        format.html { render :new }
        format.json { render json: @catalog_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalog_items/1
  # PATCH/PUT /catalog_items/1.json
  def update
    respond_to do |format|
      if @catalog_item.update(catalog_item_params)
        format.html { redirect_to @catalog_item, notice: 'Catalog item was successfully updated.' }
        format.json { render :show, status: :ok, location: @catalog_item }
      else
        format.html { render :edit }
        format.json { render json: @catalog_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalog_items/1
  # DELETE /catalog_items/1.json
  def destroy
    @catalog_item.destroy
    respond_to do |format|
      format.html { redirect_to catalog_items_url, notice: 'Catalog item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalog_item
      @catalog_item = CatalogItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalog_item_params
      params.require(:catalog_item).permit(:title, :slug, :body, :price, :position, :section_id)
    end
end
