class VaccinationsController < ApplicationController
    def index
        @vaccinations = Vaccination.all
    end

    def new
        @vaccination = Vaccination.new
    end

    def create
        @vaccination = Vaccination.new(vaccination_params)
            if @vaccination.save
                redirect_to vaccinations_path
            else
                render :new
            end
    end

    def edit
        @vaccination = Vaccination.find(params[:id])
    end

    def update
        @vaccination = Vaccination.find(params[:id])
            if @vaccination.update(vaccination_params)
                redirect_to vaccinations_path
            else
                render :edit
            end
    end

    def destroy
        @vaccination = Vaccination.find(params[:id])
        @vaccination.destroy
        redirect_to vaccinations_path
    end

    private
        def vaccination_params
            params.require(:vaccination).permit(:nombre, :direccion, :contacto)
        end
end
