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


  def create
    @pill = Pill.new(@pill_params)
    @pill.owner_id = current_user.id

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

  def edit
    @pill = Pill.find(params.fetch(:id))
    @pill.owner_id = current_user.id
    respond_to do |format|
      if @pill.update(@pill_params)
        format.html { redirect_to pill_url(@pill), notice: "Pill was successfully updated." }
        format.json { render :show, status: :ok, location: @pill }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pill.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @pill = Pill.find(params.fetch(:id))

    @pill.destroy

    redirect_to(pills_url, notice: "Pill deleted successfully." )
  end
end
