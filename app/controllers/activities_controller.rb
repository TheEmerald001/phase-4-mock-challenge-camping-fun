class ActivitiesController < ApplicationController
    #GET /activities
    def index
        activities = Activity.all
        render json: activities
    end
    
    #DELETE /activities
    def destroy
        activity = Activity.find(params[:id])
        activity.destroy
        header :no_content
    end
end
