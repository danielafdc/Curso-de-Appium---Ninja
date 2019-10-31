class LoginPage
    include Capybara::DSL #Se eu rodar, vai dar erro pq essa daqui é uma classe comum, ela não implementa o Capybara.
                          #Então há duas maneiras de resolver isso: Ou eu incluo essa linha para incluir o Capybara aqui.
                          #Ou então eu faço ela herdar... ou as outras herdarem ela... Ver com o Adrian
    
    def acessa
        visit "/login"
    end

    def alerta
        find(".alert-login") #Quando busco um elemento por id eu uso #
                             #Quando busco um elemento por classe eu uso . (ponto)
    end
    
    def logar(email, senha)
        visit "/login"
        find("#login_email").set email
            #aqui eu poderia usar find(id:, "login_email")
    #ou então a melhor forma: tipo[atributo=valor]
    find("input[name=password]").set senha #tipo[atributo=valor] melhor forma de fazer busca usando CSS
    find("button[id*=btnLogin]").click
    #click_button "Login"
    end
end