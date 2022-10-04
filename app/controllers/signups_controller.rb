class SignupsController < ApplicationController
    def create
        Signup = Signup.create(signups_params)
        render json: {successfully  =>  true, message:}
    end

    private
    def signup_params
        params.permit(:camper_id, :activity_id, :time)
    end
end
