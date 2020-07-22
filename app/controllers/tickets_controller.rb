class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :update, :destroy]


  # GET /tickets
  def index
    @tickets = Ticket.all

    render json: @tickets
  end

  # GET /tickets/1
  def show
    render json: @ticket
  end

  def get_tickets
    # @user = 38
    @guess_tickets = Ticket.where(user_id: 38).all
    render json: @guess_tickets
  end

  # POST /tickets
  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      render json: @ticket, status: :created, location: @ticket
    else
      render json: @ticket.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tickets/1
  def update
    if @ticket.update(ticket_params)
      render json: @ticket
    else
      render json: @ticket.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tickets/1
  def destroy
    @ticket.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ticket_params
      params.require(:ticket).permit(:event_date, :event_time, :purchase_date, :purchase_price, :scan_code, :section, :aisle, :seat, :gather_id, :user_id)
    end
end
