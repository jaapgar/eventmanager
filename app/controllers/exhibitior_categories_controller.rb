class ExhibitiorCategoriesController < ApplicationController
  # GET /exhibitior_categories
  # GET /exhibitior_categories.json
  def index
    @exhibitior_categories = ExhibitiorCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exhibitior_categories }
    end
  end

  # GET /exhibitior_categories/1
  # GET /exhibitior_categories/1.json
  def show
    @exhibitior_category = ExhibitiorCategory.find(params[:id])
    @exhibitor = @exhibitior_category.exhibitors

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exhibitior_category }
    end
  end

  # GET /exhibitior_categories/new
  # GET /exhibitior_categories/new.json
  def new
    @exhibitior_category = ExhibitiorCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exhibitior_category }
    end
  end

  # GET /exhibitior_categories/1/edit
  def edit
    @exhibitior_category = ExhibitiorCategory.find(params[:id])
  end

  # POST /exhibitior_categories
  # POST /exhibitior_categories.json
  def create
    @exhibitior_category = ExhibitiorCategory.new(params[:exhibitior_category])

    respond_to do |format|
      if @exhibitior_category.save
        format.html { redirect_to @exhibitior_category, notice: 'Exhibitior category was successfully created.' }
        format.json { render json: @exhibitior_category, status: :created, location: @exhibitior_category }
      else
        format.html { render action: "new" }
        format.json { render json: @exhibitior_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exhibitior_categories/1
  # PUT /exhibitior_categories/1.json
  def update
    @exhibitior_category = ExhibitiorCategory.find(params[:id])

    respond_to do |format|
      if @exhibitior_category.update_attributes(params[:exhibitior_category])
        format.html { redirect_to @exhibitior_category, notice: 'Exhibitior category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exhibitior_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exhibitior_categories/1
  # DELETE /exhibitior_categories/1.json
  def destroy
    @exhibitior_category = ExhibitiorCategory.find(params[:id])
    @exhibitior_category.destroy

    respond_to do |format|
      format.html { redirect_to exhibitior_categories_url }
      format.json { head :no_content }
    end
  end
end
