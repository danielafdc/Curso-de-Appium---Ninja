class PerfilPage
    include Capybara::DSL


    def alerta
        find(".alert-login")#bug é aqui
    end

    def completa_cadastro(empresa, cargo)
        find("#profile-company").set empresa
        
        combo = find("select[name$=job]")
        #Cada opção do combo box é um option
        #Dentro do bombo, busque uma option com o texto...passado pelo cargo. Se você encontrar, selecione a opcão
        combo.find("option", text: cargo).select_option #busca somente desse elemento

        click_button "Salvar"

    end
end