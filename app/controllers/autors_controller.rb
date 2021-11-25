class AutorsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @autor=Autor.new
  end
  def create
    # @autor=Autor.new(
    #   nombre:params[:autor][:nombre],
    # )
    @autor=Autor.new(param_autor)
    if @autor.save
        redirect_to autors_path
    else
      render :new
    end

  end

  def edit
  end

  private
  def param_autor
    params.require(:autor).permit(:nombre, :apellido_p, :apellido_m, :nacionalidad, :nacimiento)    
  end  
end
