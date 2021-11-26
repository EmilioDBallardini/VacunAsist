class NoticiumController < ApplicationController

	def new
		@noticium = Noticium.new
	end

	def index
		@noticium = Noticium.all
	end

	def create
        @noticium = Noticium.new(noticium_params)
		@noticium.titulo = @noticium.titulo.upcase
        if @noticium.save
            redirect_to home_path, notice: "La noticia se cargó satisfactoriamente"
        else
            render :new
        end

	end

	def update
        @noticium = Noticium.find(params[:id])

        if @noticium.update(params.require(:noticium).permit(:titulo, :epigrafe, :pie_de_pagina, :cuerpo, :subtitulo))  
            redirect_to home_path, notice: "La noticia se editó satisfactoriamente"
        else
            flash[:error] = "Hubo un error al editar la noticia"
            render :edit
        end
	end


	def show
		@noticium = Noticium.find(params[:id])
	end

	def destroy
	end

	private
	def noticium_params
		params.require(:noticium).permit(:titulo, :subtitulo, :epigrafe, :pie_de_pagina, :cuerpo, :img_url)
	end
	
end
