Dado("que estou autenticado com {string} e {string}") do |email, senha|
    #visit "https://mark7.herokuapp.com" - Tirando essa linha e colocando a URL padrão no arquivo env
    visit "/login" #Agora fica assim para acessar a URL
    @login_page.acessa
    @login_page.logar(email, senha)
end

Dado("acesso o meu perfil") do
    #within só trabalha com escopos. Quero buscar um elemento dentro de determinada classe. Daí eu pego o elemento pai
  #within("aside[class=navigation]") do #Dentro dessa classe natigation(desse bloco html), clique no link chamado Perfil
   # click_link "Perfil" #Isso é um recurso do Capybara
   #Removi o código acima e coloquei no arquivo componentes

    @side.acessa_perfil
  end

Quando("completo o meu cadastro com {string} e {string}") do |empresa, cargo|
  @perfil_page.completa_cadastro(empresa, cargo)
end

Então("devo ver a mensagem de atualização cadastral:") do |mensagem|
  expected(@perfil_page.alerta).to have_content mensagem
end