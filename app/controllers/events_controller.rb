class EventsController < ApplicationController
	before_action :set_group
	def index
		@events = @group.events.all
	end

	def create
		@event = @group.events.build(event_params)
		@event.save
		redirect_to group_events_path(@group)
	end

	def new
		#@event = Event.new
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
		redirect_to group_event_path(@group, @event)
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		redirect_to group_events_path(@group)

	end

	private
	def event_params
		params.require(:event).permit(:title, :pubmat, :venue, :time, :time_end, :desc)
	end

	def set_group
		@group = Group.find(params[:group_id])
	end
end
