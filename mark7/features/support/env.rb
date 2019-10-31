require "capybara"
require "capybara/cucumber"

#Configuração do capybara para atender as necessidades. É um método do capybara
Capybara.configure do |config|
    config.default_driver = :selenium_chrome #se fosse o firefox, deixar só o selenium
    config.app_host = "https://mark7-sandbox.herokuapp.com/login" #isso é para ele concatenar a url. Assim, posso ver que quando quero
                                                    #fazer o login, por exemplo, só digito /login
end

#Capybara.default_max_wait_time = 5 => O Capybara já trabalha com time out. Mas aqui eu posso setar um valor default.
#Isso significa que o capybara deve esperar até 5 segundos um elemento aparecer na tela.