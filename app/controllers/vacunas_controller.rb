class VacunasController < ApplicationController
  def index
      @vacunas = Vacuna.all
  end

  def new
      @vacuna = Vacuna.new
  end

  def create
      @vacuna = Vacuna.new(vacuna_params)
      @vacuna.nombre = @vacuna.tipo_vacuna.nombre
          if @vacuna.save
            redirect_to turnos_new_path
          else
              render :new
          end
  end

  def edit
      @vacuna = Vacuna.find(params[:id])
  end

  def update
      @vacuna = Vacuna.find(params[:id])
          if @vacuna.update(vacuna_params)
              redirect_to vacunas_path
          else
              render :edit
          end
  end

  def destroy
      @vacuna = Vacuna.find(params[:id])
      @vacuna.destroy
      redirect_to vacunas_path
  end

  private
      def vacuna_params
          params.require(:vacuna).permit(:tipo_vacuna_id, :lote, :cantidad, :vaccination_id)
      end
end
