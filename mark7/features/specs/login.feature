#language:pt
Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuário
    Posso acessar o sistema com email e senha previamente cadastrados.

    Contexto: Home
        Dado que eu acesso o sistema

    @sprint1 @logout
    Cenario: Usuário autenticado
        Quando faço login com "eu@papito.io" e "123456"
        Então vejo a mensagem de boas vindas "Olá, Fernando"

    #Isso se chama cenário outline
    @tentativa 
    Esquema do Cenario: Tentativa de login 

        Quando faço login com "<email>" e "<senha>"
        Então vejo a seguinte mensagem de alerta "<saida>"

        #Matriz de exemplos - A cada rodada, ele substitui os valores
        Exemplos:
        # |email|senha|saida|
        # |eu@papito.io|xpto123|Senha inválida.|
        # |eu@papitofdg4.io|xpto123|Usuário não cadastrado.|
        # ||123456|Email incorreto ou ausente.|
        # |eu@papitofdg4.io||Senha ausente.|
        
        #Para ficar mais bonitinho

      | email            | senha   | saida                       |
      | eu@papito.io     | xpto123 | Senha inválida.             |
      | eu@papitofdg4.io | xpto123 | Usuário não cadastrado.     |
      |                  | 123456  | Email incorreto ou ausente. |
      | eu@papitofdg4.io |         | Senha ausente.              |
      | eu#papito.io     | asdfgh  | Email incorreto ou ausente. |
      #A última linha é outro cenário implementado

    #  SEGUNDO CÓDIGO
    #Em todos os cenários, a única execução é a mesma. A única coisa que muda é os dados que entram e o que sai, exceto o cenário de usuário autenticado.
    # Então eu vou usar a técnica chamada "Esquema do Cenario". Vide código acima.
    #    @sprint1
    # Cenario: Senha incorreta
    #     Quando faço login com "eu@papito.io" e "123xco9"
    #     Então vejo a seguinte mensagem de alerta "Senha inválida."
    #
    # @sprint1
    # Cenario: Usuário não cadastrado
    #     Quando faço login com "eu@papitofdg4.io" e "123456"
    #     Então vejo a seguinte mensagem de alerta "Usuário não cadastrado."

    #Aqui eu troquei e deixei esse cenário por último para ele não estar logado nos outros testes.
    #Ou então eu poderia pedir para ele fazer um logout depois desse cenário. Por isso criei o logout e a classe hooks.
    # @sprint1 @logout
    # Cenario: Usuário autenticado
    #     Quando faço login com "eu@papito.io" e "123456"
    #     #Então vejo a seguinte mensagem "Olá, Fernando" Refatorando para...
    #     Então vejo a mensagem de boas vindas "Olá, Fernando"

    # @sprint2
    # Cenario: Email deve ser obrigatório
    #     Quando faço login com "" e "123456"
    #     Então vejo a seguinte mensagem de alerta "Email incorreto ou ausente."

    # @sprint2
    # Cenario: Senha deve ser obrigatória
    #     Quando faço login com "eu@papito.io" e ""
    #     Então vejo a seguinte mensagem de alerta "Senha ausente."







# PRIMEIRO CÓDIGO
# #Mudei todo o código abaixo para o que está acima. Pois acima está de uma forma que eu consiga reaproveitar
# #melhor o código
# Funcionalidade: Login
#     Para que eu possa cadastrar e gerenciar minhas tarefas
#     Sendo um usuário
#     Posso acessar o sistema com email e senha previamente cadastrados.

#     #No contexto eu coloco algo que seja comum em todos os cenários 
#     Contexto: Home
#         Dado que eu acesso o sistema
#     @sprint1
#     Cenario: Usuário autenticado
#                 Quando faço login com "eu@papito.io" e "123456"
#         Então vejo a seguinte mensagem "Olá, Fernando"
        
#         #não escrever desse jeito, pois esse "e" está complementando a preparação
#         #quando deveria ser a ação
#         #Também não escrever coisas do tipo: "clico em botão", "preencho campo"... isso é coisa de teste! BDD não é teste.
#         #Dado que eu acessei o sistema
#         #E preencho o campo email com "eu@papito.io"
#         #E preencho o campo senha com "123456"
#         #Quando clico em Entrar
#         #Então......

#     @sprint1
#     Cenario: Senha incorreta
#         Quando faço login com senha incorreta
#         Então vejo a seguinte mensagem "Senha inválida."
  
#     @sprint1
#     Cenario: Usuário não cadastrado
#         Quando faço login com um email que não está cadastrado
#         Então vejo a seguinte mensagem "Usuãrio não cadastrado."

#     @sprint2
#     Cenario: Email deve ser obrigatório
#         Quando eu faço login sem informar o email
#         Então vejo a seguinte mensagem "Email deve ser preenchido"

#     @sprint2
#     Cenario: Senha deve ser obrigatória
#         Quando eu faço login sem informar a senha
#         # Então vejo a seguinte mensagem "Senha deve ser preenchida"