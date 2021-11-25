class BibliotecasController < ApplicationController
  before_action :authenticate_user!
  def index
    
    @biblioteca=Biblioteca.all

  end

  def show
    @biblioteca=Biblioteca.find(params[:id])
    # @relacionlibros=RelacionLibro.where("biblioteca_id=?",params[:id])
    @relacionlibros=RelacionLibro.where(biblioteca_id:params[:id])
  end

  def new
    @biblioteca=Biblioteca.new
  end
  def create
    @biblioteca=Biblioteca.new(
      nombre:params[:biblioteca][:nombre],
      direccion:params[:biblioteca][:direccion]
    )
    if @biblioteca.save
        redirect_to bibliotecas_path
    else
      render :new
    end

  end
   
  def edit
    @biblioteca=Biblioteca.find(params[:id])
  end

  def update  
      @biblioteca=Biblioteca.find(params[:id])
      if @biblioteca.update(
        nombre:params[:biblioteca][:nombre],
        direccion:params[:biblioteca][:direccion]
        )
        redirect_to bibliotecas_path
      else
        render :edit
      end
  end 

  def params_biblioteca
    params.require(:biblioteca).permit(:nombre, :direccion)

  end

  def destroy
    @biblioteca=Biblioteca.find(params[:id])
    @biblioteca.destroy
    redirect_to bibliotecas_path
  end  
  
end
