class ClienteMailer < ApplicationMailer
    #El metodo default establece configuraciones por defecto
    #para todos los correos desde este mailer
    default from: 'redpablo16@gmail.com'

    def welcome_email
        @cliente = params[:cliente]
        @url = 'https://estoesunaprueba.com/login'
        #El metodo mail crea el correo con los headers especificados
        mail(to: @cliente.email, subject: 'Bienvenido a la plataforma facturitas')
    end
end
