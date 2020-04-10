class ActivitiesController < ApplicationController
    # resources :activities, only: [:index, :create, :show]

    def index
        activities = Activity.all 
        render json: activities
    end

    def create
        activity = Activity.create(activity_params)
        # create both activity & useracitivity with userid
        render json: activity
    end

    def show
        activity = Activity.find(params[:id])
        render json: activity
    end

    def destroy
        activity = Activity.find(params[:id])
        activity.destroy
    end

    private 

    def activity_params
        params.require(:activity).permit(:location, :name, :date, :info)
    end


end
