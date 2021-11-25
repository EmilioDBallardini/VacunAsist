class CampaingforUsersController < ApplicationController
  def index
      @campaingfor_users = CampaingforUser.all
  end

  def new
      @campaingfor_user = CampaingforUser.new
  end

  def create
      @campaingfor_user = CampaingforUser.new(campaingfor_user_params)
      @campaingfor_user.user_id = current_user.id
          if @campaingfor_user.save
              now = DateTime.now.to_date
              age = now.year - current_user.nacimiento.year
              age -= 1 if now.yday < current_user.nacimiento.yday
              if age > 60 || current_user.enfermedad
                current_user.espera=1
                current_user.save
              else
                current_user.espera=0
                current_user.save
              end
              redirect_to campaingfor_users_path        #deberia redirect to Mensaje de ok
          else
              render :new
          end
  end

  def solturno
      @campaingfor_user= CampaingforUser.find(params[:id])
      #@useract=User.find(@campaingfor_user.user_id)
      now = DateTime.now.to_date
      age = now.year - current_user.nacimiento.year
      age -= 1 if now.yday < current_user.nacimiento.yday
      if age < 60 || current_user.enfermedad
        @t=Turno.where("Fecha_hora > '2021-11-26'").first
        if @t != nil
          @campaingfor_user.turno_id=@t.id
        else
          current_user.espera=1
          current_user.save
        end
      else
        current_user.espera=0
        current_user.save
      end
      redirect_to campaingfor_users_path
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
          params.require(:campaingfor_user).permit(:campaingvaccine_id, :user_id, :vaccination_id)
      end
end
