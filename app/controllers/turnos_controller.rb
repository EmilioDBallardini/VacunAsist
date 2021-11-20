class TurnosController < ApplicationController
    def index
        @turnos = Turno.all
    end

    def new
        @turno = Turno.new
    end

    def create
        #@turno = Turno.new(turno_params)
            #if @turno.save
                #redirect_to turnos_path
            #else
                #render :new
            #end
        @turno = Turno.create(params.require(:turno).permit(:Fecha_hora, :disponible, :vaccination_id))
    end

    def edit
        @turno = Turno.find(params[:id])
    end

    def update
        @turno = Turno.find(params[:id])
            if @turno.update(turno_params)
                redirect_to turnos_path
            else
                render :edit
            end
    end

    def destroy
        @turno = Turno.find(params[:id])
        @turno.destroy
        redirect_to turnos_path
    end

    private
        def turno_params
            params.require(:turno).permit(:Fecha_hora, :disponible, :vaccination_id)
        end
end
