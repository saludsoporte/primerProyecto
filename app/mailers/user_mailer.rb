class UserMailer < ApplicationMailer
    def new_libro(user, libro)
        @libro = libro
        mail(to: user.email, subject: "Se ha publicado un nuevo libro!" )
    end
    
end
