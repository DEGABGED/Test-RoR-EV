class MembershipsController < ApplicationController
    before_action :authenticate_user!

    def index
        if (params[:group_id] && request.path == group_memberships_path(params[:group_id]))
            redirect_to root_path
            # View members of a group
        else
            # View groups of a member
            @memberships = Membership.where(user_id: current_user.id).find_each
        end
    end
 
    def create
        @mem = Membership.create(group_id: params[:group_id], user_id: current_user.id)
        if @mem.save
            flash[:success] = "Group followed!"
            redirect_to group_events_path(params[:group_id])
        else
            flash[:alert] = "Something went wrong!"
        end
    end

    def destroy
        @mem = Membership.find(params[:id])
        if @mem.delete
            flash[:success] = "Group unfollowed!"
            redirect_to group_events_path(params[:group_id])
        else
            flash[:alert] = "Something went wrong!"
        end
    end
end
