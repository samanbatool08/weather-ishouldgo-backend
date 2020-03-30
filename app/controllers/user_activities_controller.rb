class UserActivitiesController < ApplicationController

    # resources :user_activities, only: [:create]

    def create
       user_activity = UserActivity.create(user_activity_params)
       activity = Activity.find(params[:activity_id])
       render json: activity
    end


    private

    def user_activity_params
        params.require(:user_activity).permit(:user_id, :activity_id)
    end 

end
