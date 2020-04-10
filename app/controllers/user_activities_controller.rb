class UserActivitiesController < ApplicationController

    # resources :user_activities, only: [:create]

    def create
       user_activity = UserActivity.find_or_create_by(user_activity_params)
       activity = Activity.find(params[:activity_id])
       render json: activity
    end

    def index 
        user_activities = UserActivity.all 
        render json: user_activities
    end

    def show
        user_activity = UserActivity.find(params[:id])
        render json: user_activity
    end


    def destroy
        user_activity = UserActivity.find(params[:id])
        user_activity.destroy
    end

    private

    def user_activity_params
        params.require(:user_activity).permit(:user_id, :activity_id)
    end 

end
