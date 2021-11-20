class CampaingsController < ApplicationController
    def index
        @campaing = Campaing.all
    end

    def new
        @campaing = Campaing.new
    end

    def create
        @campaing = Campaing.new(campaing_params)
            if @campaing.save
                redirect_to campaings_path
            else
                render :new
            end
    end

    def edit
        @campaing = Campaing.find(params[:id])
    end

    def update
        @campaing = Campaing.find(params[:id])
            if @campaing.update(campaing_params)
                redirect_to campaings_path
            else
                render :edit
            end
    end

    def destroy
        @campaing = Campaing.find(params[:id])
        @campaing.destroy
        redirect_to campaings_path
    end

    private
        def campaing_params
            params.require(:campaing).permit(:name, :inicio, :fin, :vacuna_id)
        end
end
