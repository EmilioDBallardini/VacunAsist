class NoticiumController < ApplicationController

	def new
		@noticium = Noticium.new
	end

	def index
		@noticium = Noticium.all
	end

	def create
        @noticium = Noticium.new(params.permit(:noticium))

        if @noticium.save
            redirect_to home_path, notice: "La noticia se cargó satisfactoriamente"
        else
            flash[:error] = "Hubo un error al cargar la noticia"
            render :new
        end

	end

	def update
        @noticium = noticium.find(params[:id])

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
	
end
