class UsersController < ApplicationController
    def index 
        users = User.all 
        render json: users
    end

    def show 
        puts user
        # return user.to_json
        render json: user
    end

    def create 
        user = User.create(user_params)
        render json: user, status: :created
    end

    def update 
        
        user.update!(user_params)
        render json: user
    end

    def destroy 
        User.destroy(params[:id])
    end

    private

    # user = User.find(params[:id])

    def user_params
        params.permit(:username, :bio, :age)
    end

    def the_user
        User.find_by(id: params[:id])
    end

end
