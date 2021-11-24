class TurnosController < ApplicationController
    def index
        @turnos = Turno.all
    end

    def new
        @turno = Turno.new
    end

    def create
        @turno = Turno.new(turno_params)
      #  age = Date.today.year - current_user.nacimiento.year
      #  age -= 1 if Date.today < current_user.nacimiento + age.years
      #  if age>60
          #@turno.Fecha_hora = (DateTime.now+1).days+(8.hours)
          #@turno.disponible = false
          turnos = []
          for i in 1..10
            turnos.push(1)
            puts "turnos #{i}"
          end
          10.times do |i|
          turnos << Turno.new(:vaccination_id => "turnos #{i}")
          end
          Turno.import turnos
        if @turno.save
            redirect_to turnos_path
        else
            render :new
        end
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
