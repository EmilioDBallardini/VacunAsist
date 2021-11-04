class NoticiumController < ApplicationController

	def new
		@noticium = Noticium.new
	end

	def index
		@noticium = Noticium.all
	end

	def create
        @noticium = Noticium.new(params.require(:noticium).permit(:titulo,:subtitulo,:epigrafe,:img_url,:cuerpo))

        if @noticium.save
            redirect_to home_path, notice: "La noticia se cargó satisfactoriamente"
        else
            flash[:error] = "Hubo un error al cargar la noticia"
            render :new
        end
	end


	def show
	end

	def destroy
	end
	
end
