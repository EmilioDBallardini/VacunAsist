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
        @vacun=Vacuna.last
        c=@vacun.cantidad
        d=@vacun.cantidad
          turnos = []
          fact=DateTime.now.to_date
          fact=fact+8.hours
          fact=fact+1.day
          while(c>0)
            if (fact.strftime("%u")>"7")||(fact.strftime("%u")<"6")
              if((fact.strftime("%H")>="08")&&(fact.strftime("%H")<"20"))
                turnos.push({Fecha_hora:(fact).strftime("%Y%m%d %H:%M"), disponible:"true", vaccination_id: @vacun.vaccination_id, asistio:"false"})
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
          us_prior=User.where("espera=1")
          us_prior.sort_by(&:updated_at)
          us_notprior=User.where("espera=0")
          us_notprior.sort_by(&:updated_at)


          if(d>us_prior.length)
            i=0
            while(d!=us_prior.length)
              @t=Turno.where("disponible=true").where(vaccination_id:@vacun.vaccination_id).first
              @u=User.find(us_prior[i].id)
              idcamp=Campaingvaccine.where(vacuna_id:@vacun.id).pluck("id")
              @campañaok=CampaingforUser.where(user_id:@u.id).where(campaingvaccine_id:idcamp[0]).first
              @campañaok.turno_id=@t.id
              @campañaok.save
              @t.disponible=false
              @t.save
              @u.espera=nil
              @u.save
              i=i+1
              d=d-1
            end
          else
            i=0
            while(d<0)
              @t=Turno.where("disponible=true").where(vaccination_id:@vacun.vaccination_id).first
              @u=User.find(us_prior[i].id)
              idcamp=Campaingvaccine.where(vacuna_id:@vacun.id).pluck("id")
              campañaok=CampaingforUser.where(user_id:@u.id).where(campaingvaccine_id:idcamp[0]).first
              campañaok.turno_id=@t.id
              campañaok.save
              @t.disponible=false
              @t.save
              @u.espera=nil
              @u.save
              i=i+1
              d=d-1
            end
          end


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
            params.require(:turno).permit(:Fecha_hora, :disponible, :vaccination_id, :asistio)
        end
end
