#Os menus lateral e superior são elementos das páginas. Por isso criei esse arquivo para tratá-los como elementos

class Navbar
    include Capybara::DSL

    def sair
        #O menu sair não tinha id. Mas ele é do tipo a href
        #$("a[href=/user_settings dropdown-toggle]"); esse seletor dá ruim
        #se o valor do atributo conter caracteres especiais ou espaço tem que colocar aspas duplas
        #('a[href="/user_settings dropdown-toggle"]') //porém ele ficou muito grande
        #Agora usando a outra estratégia: $("a[href*=user_settings]"); //mas aqui ele achará vários
        #Então eu especifico melhor... o elemento que eu quero está na navbar. No de baixo eu usei a classe
        #Porém olhando o menu, eu vejo que somente ele contém o "dropdown"
    find(".navbar a[href*=dropdown]").click #O a significa que é do tipo link
    find(".navbar a[href$=logout").click #O $ significa "que termina em..."
    end
end

class Sidebar
    include Capybara::DSL

    def acessa_perfil
    within("aside[class=navigation]") do
        click_link "Perfil"
    end
end
end