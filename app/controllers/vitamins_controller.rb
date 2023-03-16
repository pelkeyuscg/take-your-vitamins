class VitaminsController < ApplicationController
  before_action :set_vitamin, only: %i[ show edit update destroy ]
  def index
    @vitamins = Vitamin.order( created_at: :desc )

    respond_to do |format|
      format.json do
      render json: @vitamins
    end
    format.html
    end
  end

  def show
    @vitamin = Vitamin.find(params.fetch(:id))
  end

  def new
    @vitamin = Vitamin.new
  end

  def create
    @vitamin = Vitamin.new(@vitamin_params)

    respond_to do |format|
      if @vitamin.save
        format.html { redirect_to vitamin_url(@vitamin), notice: "Vitamin was successfully created." }
        format.json { render :show, status: :created, location: @vitamin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vitamin.errors, status: :unprocessable_entity }
      end
    end
  end
  #  @vitamin.amount_per_serving = params.fetch(:amount_per_serving)
  #  if @vitamin.valid?
  #    @vitamin.save
  #    redirect_to(vitamins_url, notice: "Vitamin created successfully." )
  #  else
  #    redirect_to(vitamins_url, alert: @vitamin.errors.full_messages.to_sentence )
  #  end


  def update
    respond_to do |format|
      if @vitamin.update(vitamin_params)
        format.html { redirect_to vitamin_url(@vitamin), notice: "Vitamin was successfully updated." }
        format.json { render :show, status: :ok, location: @vitamin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vitamin.errors, status: :unprocessable_entity }
      end
    end
    
    #@vitamin = Vitamin.find(params.fetch(:id))
    #@vitamin.amount_per_serving = params.fetch("amount_per_serving")

    #if @vitamin.valid?
      #@vitamin.save
      #redirect_to(vitamins_url(@vitamin.id), notice: "Vitamin updated successfully." )
    #else
      #redirect_to(vitamins_url(@vitamin.id), alert: @vitamin.errors.full_messages.to_sentence )
    #end
  end

  def destroy
    @vitamin = Vitamin.find(params.fetch(:id))

    @vitamin.destroy

    redirect_to(vitamins_url, notice: "Vitamin deleted successfully." )
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vitamin
      @vitamin = Vitamin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vitamin_params
      params.require(:vitamin).permit(:amount_per_serving, :name)
    end
end
