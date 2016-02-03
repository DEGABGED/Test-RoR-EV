class EventsController < ApplicationController
	def index
		@events = Event.all
	end

	def create
		@event = Event.create(event_params)
		redirect_to events_path
	end

	def new
		@event = Event.new
		@groups = Group.all
	end

	def edit
		@event = Event.find(params[:id])
	end

	def show
		@event = Event.find(params[:id])
	end

	def update
		@event = Event.find(params[:id])
		@event.update(event_params)
		redirect_to event_path(@event)
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		redirect_to events_path

	end

	private
	def event_params
		params.require(:event).permit(:title, :pubmat, :venue, :time, :time_end, :desc)
	end
end
