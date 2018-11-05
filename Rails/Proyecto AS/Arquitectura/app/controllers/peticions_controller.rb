class PeticionsController < ApplicationController
  before_action :set_peticion, only: [:show, :edit, :update, :destroy]

  # GET /peticions
  # GET /peticions.json
  def index
    @peticions = Peticion.all
  end

  # GET /peticions/1
  # GET /peticions/1.json
  def show
  end

  # GET /peticions/new
  def new
    @peticion = Peticion.new
  end

  # GET /peticions/1/edit
  def edit
  end

  # POST /peticions
  # POST /peticions.json
  def create
    @peticion = Peticion.new(peticion_params)

    respond_to do |format|
      if @peticion.save
        format.html { redirect_to @peticion, notice: 'Peticion was successfully created.' }
        format.json { render :show, status: :created, location: @peticion }
      else
        format.html { render :new }
        format.json { render json: @peticion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /peticions/1
  # PATCH/PUT /peticions/1.json
  def update
    respond_to do |format|
      if @peticion.update(peticion_params)
        format.html { redirect_to @peticion, notice: 'Peticion was successfully updated.' }
        format.json { render :show, status: :ok, location: @peticion }
      else
        format.html { render :edit }
        format.json { render json: @peticion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peticions/1
  # DELETE /peticions/1.json
  def destroy
    @peticion.destroy
    respond_to do |format|
      format.html { redirect_to peticions_url, notice: 'Peticion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peticion
      @peticion = Peticion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def peticion_params
      params.require(:peticion).permit(:Tipo_de_documento, :Nombre, :Apellido, :Direccion, :Correo, :Pais, :ciudad, :tipoSolicitud, :Detalle)
    end
end
