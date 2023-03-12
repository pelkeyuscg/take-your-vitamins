class PillTakensController < ApplicationController
  def index
    @pill_takens = PillTaken.order( created_at: :desc )
  end

  def show
    @pill_takens = PillTaken.find(params.fetch(:id))
  end

  def create
    @pill_takens = PillTaken.new
    @pill_takens.pill_id = params.fetch("pill_id")
    @pill_takens.quantity = params.fetch("quantity")

    if @pill_takens.valid?
      @pill_takens.save
      redirect_to(pills_taken_url, notice: "Pill taken created successfully." )
    else
      redirect_to(pills_taken_url, alert: @pill_takens.errors.full_messages.to_sentence )
    end
  end

  def update
    @pill_takens = PillTaken.find(params.fetch(:id))

    @pill_takens.pill_id = params.fetch("pill_id")
    @pill_takens.quantity = params.fetch("quantity")

    if @pill_takens.valid?
      @pill_takens.save
      redirect_to(pills_taken_url(@pill_takens.id), notice: "Pill taken updated successfully." )
    else
      redirect_to(pills_taken_url(@pill_takens.id), alert: @pill_takens.errors.full_messages.to_sentence )
    end
  end

  def destroy
    @pill_takens = PillTaken.find(params.fetch(:id))

    @pill_takens.destroy

    redirect_to(pills_taken_url, notice: "Pill taken deleted successfully.")
  end
end
