class UserController < ApplicationController
    before_action :authenticate_user!
    def index
        @usuarios=User.all
    end

    def show
        @usuario=current_user
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

    private 
        def user_params
            params.requiere(:user).permit(:nombre, :apellido, :email, :contraseña, :nacimiento)
        end
end