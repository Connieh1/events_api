class EventsController < ApplicationController
  def index
    render json: Event.all
  end

  def create
    event = Event.new(event_params)
    if event.save
      render json: @event, status: :accepted
    else
      render json: {errors: event.errors.full_messages}, status: :unprocessable_entity
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :event_type)
  end
end
