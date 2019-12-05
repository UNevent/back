class EventTagsController < ApplicationController
  before_action :set_event_tag, only: [:show, :update, :destroy]

  # GET /event_tags
  def index
    @event_tags = EventTag.all

    render json: @event_tags
  end

  # GET /event_tags/1
  def show
    render json: @event_tag
  end

  # POST /event_tags
  def create
    @event_tag = EventTag.new(event_tag_params)

    if @event_tag.save
      render json: @event_tag, status: :created, location: @event_tag
    else
      render json: @event_tag.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /event_tags/1
  def update
    if @event_tag.update(event_tag_params)
      render json: @event_tag
    else
      render json: @event_tag.errors, status: :unprocessable_entity
    end
  end

  # DELETE /event_tags/1
  def destroy
    @event_tag.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_tag
      @event_tag = EventTag.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_tag_params
      params.require(:event_tag).permit(:event_id, :tag_id)
    end
end
