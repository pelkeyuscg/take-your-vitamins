# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



From Vitamin form


  <div>
    <%= label_tag :amount_per_serving, "MG per serving" %>
    <input type="text" id="amount_per_serving" name="amount_per_serving">
  </div>

  <div>
    <%= label_tag :name %>
    <input type="text" id="vitamin_id" name="vitamin_id">
  </div>

From pill controller:

    @pill = Pill.new
    @pill.vitamin_id = params.fetch(:vitamin_id)
    @pill.owner_id = current_user.id
    @pill.brand = params.fetch(:brand)
    @pill.description = params.fetch(:description)
    @pill.ingredients = params.fetch(:ingredients)
    @pill.quantity = params.fetch(:quantity)
    @pill.upc = params.fetch(:upc)
    @pill.order_more = params.fetch(:order_more)
    @pill.pill_takens_count = params.fetch(:pill_takens_count)

    if @pill.valid?
      @pill.save
      redirect_to(pills_url, notice: "Pill created successfully." )
    else
      redirect_to(pills_url, alert: @pill.errors.full_messages.to_sentence )
    end
  end
