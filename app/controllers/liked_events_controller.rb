class LikedEventsController < ApplicationController
  before_action :set_liked_event, only: [:show, :update, :destroy]

  # GET /liked_events
  def index
    @liked_events = LikedEvent.all

    render json: @liked_events
  end

  # GET /liked_events/1
  def show
    render json: @liked_event
  end

  # POST /liked_events
  def create
    @liked_event = LikedEvent.new(liked_event_params)

    if @liked_event.save
      render json: @liked_event, status: :created, location: @liked_event
    else
      render json: @liked_event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /liked_events/1
  def update
    if @liked_event.update(liked_event_params)
      render json: @liked_event
    else
      render json: @liked_event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /liked_events/1
  def destroy
    @liked_event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liked_event
      @liked_event = LikedEvent.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def liked_event_params
      params.require(:liked_event).permit(:event_id, :user_id)
    end
end
