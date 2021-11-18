class CampaingforUsersController < ApplicationController
  def index
      @campaingfor_users = CampaingforUser.all
  end

  def new
      @campaingfor_user = CampaingforUser.new
  end

  def create
      @campaingfor_user = CampaingforUser.new(campaingfor_user_params)
          if @campaingfor_user.save
              redirect_to campaingfor_users_path
          else
              render :new
          end
  end

  def edit
      @campaingfor_user = CampaingforUser.find(params[:id])
  end

  def update
      @campaingfor_user = CampaingforUser.find(params[:id])
          if @campaingfor_user.update(campaingfor_user_params)
              redirect_to campaingfor_users_path
          else
              render :edit
          end
  end

  def destroy
      @campaingfor_user = CampaingforUser.find(params[:id])
      @campaingfor_user.destroy
      redirect_to campaingfor_users_path
  end

  private
      def campaingfor_user_params
          params.require(:campaingfor_user).permit(:campaingvaccine_id)
      end
end
