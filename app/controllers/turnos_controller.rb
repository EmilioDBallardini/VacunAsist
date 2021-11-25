class TurnosController < ApplicationController
    def index
        @turnos = Turno.all
    end

    def new
        @turno = Turno.new
    end

    def show
        @turno = Turno.find(params[:id])
    end


    def create
          c=2
          turnos = []
          fact=DateTime.now.to_date
          fact=fact+8.hours
          fact=fact+9.day
          while(c>0)
            if (fact.strftime("%u")!="6")&&(fact.strftime("%u")!="5")
              if((fact.strftime("%H")>="08")&&(fact.strftime("%H")<="20"))
                turnos.push({Fecha_hora:(fact+1.day).strftime("%Y%m%d %H:%M"), disponible:"true", vaccination_id:"2", asistio:"false"})
                c=c-1
                fact=fact+10.minutes
              end
            else
              fact=fact.to_date
              fact=fact+1.day+8.hours
            end
          end
          Turno.create(turnos)
          redirect_to turnos_path
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
            #params.require(:turno).permit(:Fecha_hora, :disponible, :vaccination_id)
            params.require(:turno).permit(:vaccination_id)
        end
end
