class PagesController < ApplicationController
  def x
  	@nombre = params[:nombre]
  	@email = params[:email]
  	@edad = params[:edad].to_i

  	@all_users = User.all()

  	if @nombre.present?
  		user = User.new(nombre: @nombre, email: @email, edad: @edad)

	  	if user.save
	  		redirect_to pages_x_path,
	  			notice: "El Usuario ha sido guardado con éxito"
	  	else
	  		redirect_to pages_x_path,
	  			notice: "El Usuario No ha sido guardado"
	  	end
	end
  end

  def landing

  end
end
