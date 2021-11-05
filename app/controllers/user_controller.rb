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
        
    end

end