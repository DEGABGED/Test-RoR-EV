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
end
