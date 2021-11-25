class UserController < ApplicationController
    before_action :authenticate_user!
    def index
        @usuarios=User.all
    end

    def show
        @c = User.new(user_params_vacs)
        if @c.save
            redirect_to root_path, notice: "Usuario registrado con exito"
        else
            flash[:error] = "Ocurrio un error al registrar al usuario"
            render :new
        end
    end

    def update

    end

    def edit
        @usuario = User.find(params[:id])
    end

    def update
        @usuario = User.find(params[:id])
            if @usuario.update(user_params)
                    render :show
            else 
                render :edit
            end
    end

    def new
        #if current_user && current_user.admin?
            @usuario = User.new
        #else
         #   if current_user && current_user.vacunador?
          #      @usuario = User.new
           # else
            #    redirect_to root_path, notice: "Acceso inválido"
         #   end
       # end
    end


    def create
        @c = User.new(user_params_vacs)
        if @c.save
            redirect_to root_path, notice: "Usuario registrado con exito"
        else
            flash[:error] = "Ocurrio un error al registrar al usuario"
            render :new
        end
    end


    def createvacun
        puts "#{params}>>>>>>>>>>>>>"
        @usuario = User.new
        if @usuario.save
            redirect_to root_path, notice: "¡Creado con exito!"
        else
            flash[:error] = "Ha habido un error al crear al vacunador"
            render :new
        end
    end

    private 
        def user_params
            params.require(:user).permit(:nombre, :apellido, :email, :contraseña, :nacimiento)
        end

        def user_params_vacs
            params.require(:user).permit(:dni, :email, :password, :rol)
        end
end