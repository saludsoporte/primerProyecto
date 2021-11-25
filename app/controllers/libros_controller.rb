class LibrosController < ApplicationController
  def index
  end

  def show
  end

  def new
    @libro=Libro.new
    @autor=Autor.all
  end
  def create
    @libro=Libro.new(
      titulo:params[:libro][:titulo],
      autor_id:params[:libro][:autor_id],
      isbn:params[:libro][:isbn],
      editorial:params[:libro][:editorial],
      edicion:params[:libro][:edicion],
      precio:params[:libro][:precio]
      
    )
    if @libro.save
        UserMailer.new_libro(current_user, @libro).deliver  
        redirect_to libros_path

    else
      render :new
    end

  end

  def edit
  end


end
