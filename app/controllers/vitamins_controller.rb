class VitaminsController < ApplicationController
  def index
    matching_vitamins = Vitamin.all

    @list_of_vitamins = matching_vitamins.order({ created_at: :desc })

  end

  def show
    the_id = params.fetch("path_id")

    matching_vitamins = Vitamin.where({ id => the_id })

    @the_vitamin = matching_vitamins.at(0)

  end

  def create
    the_vitamin = Vitamin.new
    the_vitamin.amount_per_serving = params.fetch("query_amount_per_serving")

    if the_vitamin.valid?
      the_vitamin.save
      redirect_to(vitamins_url, notice: "Vitamin created successfully." )
    else
      redirect_to(vitamins_url, alert: the_vitamin.errors.full_messages.to_sentence )
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_vitamin = Vitamin.where({ id: the_id }).at(0)

    the_vitamin.amount_per_serving = params.fetch("query_amount_per_serving")

    if the_vitamin.valid?
      the_vitamin.save
      redirect_to(vitamins_url(the_vitamin.id), notice: "Vitamin updated successfully." )
    else
      redirect_to(vitamins_url(the_vitamin.id), alert: the_vitamin.errors.full_messages.to_sentence )
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_vitamin = Vitamin.where({ id: the_id }).at(0)

    the_vitamin.destroy

    redirect_to(vitamins_url, notice: "Vitamin deleted successfully." )
  end
end
