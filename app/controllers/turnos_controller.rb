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
        c=Vacuna.pluck("cantidad").last
          turnos = []
          fact=DateTime.now.to_date
          fact=fact+8.hours
          fact=fact+1.day
          while(c>0)
            if (fact.strftime("%u")>"7")||(fact.strftime("%u")<"6")
              if((fact.strftime("%H")>="08")&&(fact.strftime("%H")<"20"))
                turnos.push({Fecha_hora:(fact).strftime("%Y%m%d %H:%M"), disponible:"true", vaccination_id:Vacuna.pluck("vaccination_id").last, asistio:"false"})
                c=c-1
                fact=fact+10.minutes
              else
                fact=fact+1.day
                fact=fact.to_date
                fact=fact+8.hours
              end
            else
              fact=fact.to_date
              fact=fact+8.hours
              fact=fact+1.day
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
            params.require(:turno).permit(:Fecha_hora, :disponible, :vaccination_id)
        end
end
