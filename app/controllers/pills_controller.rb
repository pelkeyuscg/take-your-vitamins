class PillsController < ApplicationController
  def index
    matching_pills = Pill.all

    @list_of_pills = matching_pills.order({ created_at: :desc })

  end

  def show
    the_id = params.fetch("path_id")

    matching_pills = Pill.where({ id: the_id })

    @the_pill = matching_pills.at(0)

  end

  def create
    the_pill = Pill.new
    the_pill.vitamin_id = params.fetch("query_vitamin_id")
    the_pill.owner_id = params.fetch("query_owner_id")
    the_pill.brand = params.fetch("query_brand")
    the_pill.description = params.fetch("query_description")
    the_pill.ingredients = params.fetch("query_ingredients")
    the_pill.quantity = params.fetch("query_quantity")
    the_pill.upc = params.fetch("query_upc")
    the_pill.order_more = params.fetch("query_order_more")
    the_pill.pill_takens_count = params.fetch("query_pill_takens_count")

    if the_pill.valid?
      the_pill.save
      redirect_to(pills_url, notice: "Pill created successfully." )
    else
      redirect_to(pills_url, alert: the_pill.errors.full_messages.to_sentence )
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_pill = Pill.where({ id: the_id }).at(0)

    the_pill.vitamin_id = params.fetch("query_vitamin_id")
    the_pill.owner_id = params.fetch("query_owner_id")
    the_pill.brand = params.fetch("query_brand")
    the_pill.description = params.fetch("query_description")
    the_pill.ingredients = params.fetch("query_ingredients")
    the_pill.quantity = params.fetch("query_quantity")
    the_pill.upc = params.fetch("query_upc")
    the_pill.order_more = params.fetch("query_order_more")
    the_pill.pill_takens_count = params.fetch("query_pill_takens_count")

    if the_pill.valid?
      the_pill.save
      redirect_to(pills_url(the_pill.id), notice: "Pill updated successfully.")
    else
      redirect_to(pills_url(the_pill.id), alert: the_pill.errors.full_messages.to_sentence )
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_pill = Pill.where({ id: the_id }).at(0)

    the_pill.destroy

    redirect_to(pills_url, notice: "Pill deleted successfully." )
  end
end
