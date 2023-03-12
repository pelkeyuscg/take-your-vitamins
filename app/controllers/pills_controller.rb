class PillsController < ApplicationController
  def index
    @pills = Pill.order( created_at: :desc )
  end

  def show
    @pill = Pill.find(params.fetch(:id))
  end

  def create
    @pill = Pill.new
    @pill.vitamin_id = params.fetch("query_vitamin_id")
    @pill.owner_id = params.fetch("query_owner_id")
    @pill.brand = params.fetch("query_brand")
    @pill.description = params.fetch("query_description")
    @pill.ingredients = params.fetch("query_ingredients")
    @pill.quantity = params.fetch("query_quantity")
    @pill.upc = params.fetch("query_upc")
    @pill.order_more = params.fetch("query_order_more")
    @pill.pill_takens_count = params.fetch("query_pill_takens_count")

    if @pill.valid?
      @pill.save
      redirect_to(pills_url, notice: "Pill created successfully." )
    else
      redirect_to(pills_url, alert: @pill.errors.full_messages.to_sentence )
    end
  end

  def update
    @pill = Pill.find(params.fetch(:id))

    @pill.vitamin_id = params.fetch("query_vitamin_id")
    @pill.owner_id = params.fetch("query_owner_id")
    @pill.brand = params.fetch("query_brand")
    @pill.description = params.fetch("query_description")
    @pill.ingredients = params.fetch("query_ingredients")
    @pill.quantity = params.fetch("query_quantity")
    @pill.upc = params.fetch("query_upc")
    @pill.order_more = params.fetch("query_order_more")
    @pill.pill_takens_count = params.fetch("query_pill_takens_count")

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
