class PillsController < ApplicationController
  def index
    @pills = Pill.order( created_at: :desc )

    respond_to do |format|
      format.json do
      render json: @vitamins
    end
    format.html
    end
  end

  def show
    @pill = Pill.find(params.fetch(:id))
  end


  def new
    @pill = Pill.new(@pill_params)

    respond_to do |format|
      if @pill.save
        format.html { redirect_to pill_url(@pill), notice: "Pill was successfully created." }
        format.json { render :show, status: :created, location: @pill }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pill.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @pill = Pill.find(params.fetch(:id))

    @pill.vitamin_id = params.fetch(:vitamin_id)
    @pill.owner_id = params.fetch(:owner_id)
    @pill.brand = params.fetch(:brand)
    @pill.description = params.fetch(:description)
    @pill.ingredients = params.fetch(:ingredients)
    @pill.quantity = params.fetch(:quantity)
    @pill.upc = params.fetch(:upc)
    @pill.order_more = params.fetch(:order_more)
    @pill.pill_takens_count = params.fetch(:pill_takens_count)

    if @pill.valid?
      @pill.save
      redirect_to(pills_url(@pill.id), notice: "Pill updated successfully.")
    else
      redirect_to(pills_url(@pill.id), alert: @pill.errors.full_messages.to_sentence )
    end
  end

  def destroy
    @pill = Pill.find(params.fetch(:id))

    @pill.destroy

    redirect_to(pills_url, notice: "Pill deleted successfully." )
  end
end
