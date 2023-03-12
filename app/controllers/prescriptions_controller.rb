class PrescriptionsController < ApplicationController
  def index
    @prescriptions = Prescription.order( created_at: :desc )
  end

  def show
    @prescription = Prescription.find(params.fetch(:id))
  end

  def create
    @prescription = Prescription.new
    @prescription.frequency = params.fetch("query_frequency")
    @prescription.pill_id = params.fetch("query_pill_id")
    @prescription.owner_id = params.fetch("query_owner_id")

    if @prescription.valid?
      @prescription.save
      redirect_to(prescriptions_url, notice: "Prescription created successfully." )
    else
      redirect_to(prescriptions_url, alert: @prescription.errors.full_messages.to_sentence )
    end
  end

  def update
    @prescription = Prescription.find(params.fetch(:id))

    @prescription.frequency = params.fetch("query_frequency")
    @prescription.pill_id = params.fetch("query_pill_id")
    @prescription.owner_id = params.fetch("query_owner_id")

    if @prescription.valid?
      @prescription.save
      redirect_to(prescriptions_url(@prescription.id), notice: "Prescription updated successfully.")
    else
      redirect_to(prescriptions_url(@prescription.id), alert: @prescription.errors.full_messages.to_sentence )
    end
  end

  def destroy
    @prescription = Prescription.find(params.fetch(:id))

    @prescription.destroy

    redirect_to(prescriptions_url, notice: "Prescription deleted successfully." )
  end
end
