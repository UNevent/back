class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]

  # GET /events
  def index
    @events = Event.all

    render json: @events
  end

  # GET /events/1
  def show
    render json: @event
  end

  # POST /events
  def create
    tags=params[:tags]
    @event = Event.new(event_params)

    if @event.save
      if tags
        EventTag.saveET(@event.id, tags)
      end
      render json: @event, status: :created, location: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # GET /created_by?user_id=1 
  def created_by
    @events= Event.created_by(params[:owner_id],params[:user_id])
    if @events.nil?
      render json: "Error en la búsqueda", status: :unprocessable_entity
    else
      render json: @events, status: :ok
    end
  end

  # GET /liked_by?user_id=1 
  def liked_by
    @events= Event.liked_by(params[:user_id])
    if @events.nil?
      render json: "Error en la búsqueda", status: :unprocessable_entity
    else
      render json: @events, status: :ok
    end
  end

  # GET /in_place?place_id=1 
  def in_place
    @events= Event.in_place(params[:place_id], params[:user_id])
    if @events.nil?
      render json: "Error en la búsqueda", status: :unprocessable_entity
    else
      render json: @events, status: :ok
    end
  end

  # GET /full
  def full
    @events= Event.full(params[:user_id])
    render json: @events, status: :ok
  end

  # GET /with_tags?place_id=1 
  def with_tags
    tags=params[:tags]
    puts("tags " + tags.to_s)
    @events= Event.with_tags(tags.split(','), params[:user_id])
    if @events.nil?
      render json: "Error en la búsqueda", status: :unprocessable_entity
    else
      render json: @events, status: :ok
    end
  end

  # PUT /filter_all
  def filter_all
    tags=params[:tags]
    @events= Event.filter_all(tags.split(','), params[:user_id], params[:date_start],params[:date_end])
    if @events.nil?
      render json: "Error en la búsqueda", status: :unprocessable_entity
    else
      render json: @events, status: :ok
    end
  end

  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_params
      params.require(:event).permit(:title, :date, :user_id, :place_id, :place_detail, :details, :poster, :owner_id, :tags, :date_start, :date_end)
    end
end
