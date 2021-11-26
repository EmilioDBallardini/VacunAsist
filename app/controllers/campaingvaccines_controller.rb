class CampaingvaccinesController < ApplicationController
  def index
      @campaingvaccines = Campaingvaccine.all
  end

  def new
      @campaingvaccine = Campaingvaccine.new
  end

  def create
      @campaingvaccine = Campaingvaccine.new(campaingvaccine_params)
          if @campaingvaccine.save
              redirect_to campaingvaccines_path
          else
              render :new
          end
  end

  def edit
      @campaingvaccine = Campaingvaccine.find(params[:id])
  end

  def update
      @campaingvaccine = Campaingvaccine.find(params[:id])
          if @campaingvaccine.update(campaingvaccine_params)
              redirect_to campaingvaccines_path
          else
              render :edit
          end
  end

  def destroy
      @campaingvaccine = Campaingvaccine.find(params[:id])
      @campaingvaccine.destroy
      redirect_to campaingvaccines_path
  end

  private
      def campaingvaccine_params
          params.require(:campaingvaccine).permit(:name, :inicio, :fin, :vacuna)
      end
end
