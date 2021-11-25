class TipoVacunasController < ApplicationController
  def index
      @tipo_vacunas = TipoVacuna.all
  end

  def new
      @tipo_vacuna = TipoVacuna.new
  end

  def create
      @tipo_vacuna = TipoVacuna.new(tipo_vacuna_params)
          if @tipo_vacuna.save
              redirect_to tipo_vacunas_path
          else
              render :new
          end
  end

  def edit
      @tipo_vacuna = TipoVacuna.find(params[:id])
  end

  def update
      @tipo_vacuna = TipoVacuna.find(params[:id])
          if @tipo_vacuna.update(tipo_vacuna_params)
              redirect_to tipo_vacunas_path
          else
              render :edit
          end
  end

  def destroy
      @tipo_vacuna = TipoVacuna.find(params[:id])
      @tipo_vacuna.destroy
      redirect_to tipo_vacunas_path
  end

  private
      def tipo_vacuna_params
          params.require(:tipo_vacuna).permit(:nombre)
      end
end
