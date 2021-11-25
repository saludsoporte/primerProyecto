class RelacionLibrosController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def new
    @relacion=RelacionLibro.new
    @libro=Libro.all
    @biblioteca=Biblioteca.all
  end

  def create
    @relacion=RelacionLibro.new(
      
      biblioteca_id:params[:relacion_libro][:biblioteca_id],
      libro_id:params[:relacion_libro][:libro_id]
      
    )
    if @relacion.save
        redirect_to biblioteca_path(@relacion.biblioteca_id)
    else
      render :new
    end

  end
end
