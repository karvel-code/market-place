class Api::V1::UsersController < ApplicationController
    
    def create
        @user = User.new(user_params)

        if @user.save
            render json: @user, status: :created
        else
            render json: @user.errors, status: :unprocessable_entity
        end
    end
    
    def show
        @user = User.find(user_params_id[:id])
        render json: @user
    end

    private
    def user_params
        params.require(:user).permit(:email, :password)
    end

    def user_params_id
        params.require(:user).permit(:id, :email, :password)
    end
end
