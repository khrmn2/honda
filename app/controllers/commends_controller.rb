class CommendsController < ApplicationController
  before_action :set_commend, only: [:show, :edit, :update, :destroy]

  # GET /commends
  # GET /commends.json
  def index
    @commends = Commend.all
  end

  # GET /commends/1
  # GET /commends/1.json
  def show
  end

  # GET /commends/new
  def new
    @commend = Commend.new
  end

  # GET /commends/1/edit
  def edit
  end

  # POST /commends
  # POST /commends.json
  def create
    @commend = Commend.new(commend_params)

    respond_to do |format|
      if @commend.save
        format.html { redirect_to @commend, notice: 'Commend was successfully created.' }
        format.json { render :show, status: :created, location: @commend }
      else
        format.html { render :new }
        format.json { render json: @commend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commends/1
  # PATCH/PUT /commends/1.json
  def update
    respond_to do |format|
      if @commend.update(commend_params)
        format.html { redirect_to @commend, notice: 'Commend was successfully updated.' }
        format.json { render :show, status: :ok, location: @commend }
      else
        format.html { render :edit }
        format.json { render json: @commend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commends/1
  # DELETE /commends/1.json
  def destroy
    @commend.destroy
    respond_to do |format|
      format.html { redirect_to commends_url, notice: 'Commend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commend
      @commend = Commend.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commend_params
      params.require(:commend).permit(:model, :yıl, :motor, :content)
    end
end
