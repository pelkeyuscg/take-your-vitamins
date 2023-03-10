class PillTakensController < ApplicationController
  def index
    matching_pill_takens = PillTaken.all

    @list_of_pill_takens = matching_pill_takens.order({ created_at: :desc })

    render({ template => "pill_takens/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_pill_takens = PillTaken.where({ id: the_id })

    @the_pill_taken = matching_pill_takens.at(0)

    render({ template: "pill_takens/show.html.erb" })
  end

  def create
    the_pill_taken = PillTaken.new
    the_pill_taken.pill_id = params.fetch("query_pill_id")
    the_pill_taken.quantity = params.fetch("query_quantity")

    if the_pill_taken.valid?
      the_pill_taken.save
      redirect_to(pills_taken_url, { notice: "Pill taken created successfully." })
    else
      redirect_to(pills_taken_url, { alert: the_pill_taken.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_pill_taken = PillTaken.where({ id: the_id }).at(0)

    the_pill_taken.pill_id = params.fetch("query_pill_id")
    the_pill_taken.quantity = params.fetch("query_quantity")

    if the_pill_taken.valid?
      the_pill_taken.save
      redirect_to(pills_taken_url(the_pill_taken.id), { notice: "Pill taken updated successfully."} )
    else
      redirect_to(pills_taken_url(the_pill_taken.id), { alert: the_pill_taken.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_pill_taken = PillTaken.where({ id: the_id }).at(0)

    the_pill_taken.destroy

    redirect_to(pills_taken_url, { notice: "Pill taken deleted successfully."} )
  end
end
