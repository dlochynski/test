class NewbornsController < ApplicationController
  before_action :set_newborn, only: [:show, :edit, :update, :destroy]

  # GET /newborns
  # GET /newborns.json
  def index
    @newborns = Newborn.all
  end

  # GET /newborns/1
  # GET /newborns/1.json
  def show
  end

  # GET /newborns/new
  def new
    @newborn = Newborn.new
  end

  # GET /newborns/1/edit
  def edit
  end

  # POST /newborns
  # POST /newborns.json
  def create
    @newborn = Newborn.new(newborn_params)

    respond_to do |format|
      if @newborn.save
        format.html { redirect_to @newborn, notice: 'Newborn was successfully created.' }
        format.json { render :show, status: :created, location: @newborn }
      else
        format.html { render :new }
        format.json { render json: @newborn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newborns/1
  # PATCH/PUT /newborns/1.json
  def update
    respond_to do |format|
      if @newborn.update(newborn_params)
        format.html { redirect_to @newborn, notice: 'Newborn was successfully updated.' }
        format.json { render :show, status: :ok, location: @newborn }
      else
        format.html { render :edit }
        format.json { render json: @newborn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newborns/1
  # DELETE /newborns/1.json
  def destroy
    @newborn.destroy
    respond_to do |format|
      format.html { redirect_to newborns_url, notice: 'Newborn was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newborn
      @newborn = Newborn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newborn_params
      params.require(:newborn).permit(:date_of_birth, :name, :number_of_weeks)
    end
end
