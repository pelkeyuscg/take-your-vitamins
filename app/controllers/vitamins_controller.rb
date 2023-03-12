class VitaminsController < ApplicationController
  def index
    @vitamins = Vitamin.order( created_at: :desc )
  end

  def show
    @vitamin = Vitamin.find(params.fetch(:id))
  end

  def create
    @vitamin = Vitamin.new
    @vitamin.amount_per_serving = params.fetch("query_amount_per_serving")

    if @vitamin.valid?
      @vitamin.save
      redirect_to(vitamins_url, notice: "Vitamin created successfully." )
    else
      redirect_to(vitamins_url, alert: @vitamin.errors.full_messages.to_sentence )
    end
  end

  def update
    @vitamin = Vitamin.find(params.fetch(:id))
    @vitamin.amount_per_serving = params.fetch("query_amount_per_serving")

    if @vitamin.valid?
      @vitamin.save
      redirect_to(vitamins_url(@vitamin.id), notice: "Vitamin updated successfully." )
    else
      redirect_to(vitamins_url(@vitamin.id), alert: @vitamin.errors.full_messages.to_sentence )
    end
  end

  def destroy
    @vitamin = Vitamin.find(params.fetch(:id))

    @vitamin.destroy

    redirect_to(vitamins_url, notice: "Vitamin deleted successfully." )
  end
end
