Dado("que eu acesso o sistema") do
    #visit "https://mark7.herokuapp.com" - Tirando essa linha e colocando a URL padrão no arquivo env
       @login_page.acessa
  end
  
  Quando("faço login com {string} e {string}") do |email, senha|
        @login_page.logar(email, senha)
  end
  
  #Então("vejo a seguinte mensagem {string}") do |mensagem|
    #expect(page).to have_content mensagem #page é elemento do capybara. Aqui significa: Espero que na página contenha a mensagem
    #Isso daqui é uma maneira geral de confirmar, mas e se eu tiver mais de um lugar com o texto? Será que ele verifica no lugar certo?
    #Posso restringir o lugar e pesquisar dentro do task board.

  Então("vejo a seguinte mensagem de alerta {string}") do |alerta_msgm|
       expect(@tarefas_page.painel).to have_content alerta_msgm
    end
    
  Então("vejo a mensagem de boas vindas {string}") do |mensagem|
      expect(@login_page.alerta).to have_content mensagem
  end