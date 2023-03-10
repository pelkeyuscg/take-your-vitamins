class PrescriptionsController < ApplicationController
  def index
    matching_prescriptions = Prescription.all

    @list_of_prescriptions = matching_prescriptions.order({ created_at: :desc })

    render({ template: "prescriptions/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_prescriptions = Prescription.where({ id: the_id })

    @the_prescription = matching_prescriptions.at(0)

    render({ template: "prescriptions/show.html.erb" })
  end

  def create
    the_prescription = Prescription.new
    the_prescription.frequency = params.fetch("query_frequency")
    the_prescription.pill_id = params.fetch("query_pill_id")
    the_prescription.owner_id = params.fetch("query_owner_id")

    if the_prescription.valid?
      the_prescription.save
      redirect_to(prescriptions_url, { notice: "Prescription created successfully." })
    else
      redirect_to(prescriptions_url, { alert: the_prescription.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_prescription = Prescription.where({ id: the_id }).at(0)

    the_prescription.frequency = params.fetch("query_frequency")
    the_prescription.pill_id = params.fetch("query_pill_id")
    the_prescription.owner_id = params.fetch("query_owner_id")

    if the_prescription.valid?
      the_prescription.save
      redirect_to(prescriptions_url(the_prescription.id), { notice: "Prescription updated successfully."} )
    else
      redirect_to(prescriptions_url(the_prescription.id), { alert: the_prescription.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_prescription = Prescription.where({ id: the_id }).at(0)

    the_prescription.destroy

    redirect_to(prescriptions_url, { notice: "Prescription deleted successfully."} )
  end
end
