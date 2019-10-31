#Estratégias de busca do CSS selector REGEX ou Expressão Regular:
#Contem => *
#Termina com => $
#Começa com => ^

#Para eu não instanciar os page objects todas as vezes. Então eu faço um before genérico:

Before do
    @nav = Navbar.new
    @side = Sidebar.new
    @login_page = LoginPage.new
    @tarefas_page = TarefasPage.new
    @perfil_page = PerfilPage.new

end

After("@logout") do
        @nav.sair
end

#Se eu quisesse, antes de qualquer cenário que tenha a tag login, ele executaria o login por causa desse before
Before("@login") do
    @login_page.acessa
    @login_page.logar("eu@papito.io", "123456"))
end