#language: pt

Funcionalidade: Cadastro de tarefas
    Para que eu possa organizar minha vida
    Sendo um usuário cadastrado
    Posso adicionar novas tarefas no meu Painel

    #Posso colocar a tag login pq eu coloquei no hooks
    #O jeito de escrever aqui é voltado para a regra de negócio.
    @smoke @login
    Cenário: Nova tarefa

        Dado que o nome da minha tarefa é "Fazer Compras"
        E a data de finalização será "20/08/2018"
        E quero taguear esta tarefa com:
        |tag            |
        |Compras        |
        |SuperMercado   |
        |Ketchup        |
        Quando faço o cadastro desta tarefa
        Então devo ver esta tarefa com o status "Em andamento"


    Esquema do Cenário: Tentar cadastrar

        Dado que o nome da minha tarefa é "<nome>"
        E a data de finalização será "<data>"
        Quando faço o cadastro desta tarefa
        Então devo ver a seguinte mensagem "<mensagem>"
       
       Exemplos:
       |nome|data|mensagem|
       |Ler|21/08/2018|10 caracteres é o mínimo permitido.|
       ||21/08/2018|Nome é obrigatório.|

    #Removido os cenários abaixo
    # Cenário: Tarefa com nome muito curto

    #     Dado que o nome da minha tarefa é "Ler"
    #     E a data de finalização será "21/08/2018"
    #     Quando faço o cadastro desta tarefa
    #     Então devo ver a seguinte mensagem: 
    #     #O recurso abaixo é chamado de docstring. Significa que posso escrever um textão ali.
    #     """
    #     10 caracteres é o mínimo permitido.
    #     """

    # Cenário: Nome obrigatório

    #     Dado que o nome da minha tarefa é ""
    #     E a data de finalização será "21/08/2018"
    #     Quando faço o cadastro desta tarefa
    #     Então devo ver a seguinte mensagem:
    #     """
    #     Nome é obrigatório
    #     """

    Cenário: Tarefa não pode ser duplicada

        Dado que o nome da minha tarefa é "Ler um livro de MongoDB"
        E a data de finalização será "22/08/2018"
        #Isso daqui é para eu garantir que eu tenho já a mesma tarefa cadastrada
        #Isso aqui 
        #"Mas" é um desvio de fluxo
        Mas eu já cadastrei esta tarefa e esqueci
        Quando faço o cadastro desta tarefa
        Então devo ver a seguinte mensagem: "Tarefa duplicada."
       

        #Ex1. de um desvio de fluxo:
                # Cenário: Cartão sem limite
                # Dado que eu quero comprar um "PS4"
                # E adiciono este produto ao meu carrinho
                # Mas meu cartão tem limite
                # Quando finalizo o checkout
                # Então vejo a mensagem "Pobre"

        # Ex2.:
        #         Cenário: Transferência entre contas quando cai um débito
        #         Dado que eu tenho um saldo de R$ 1000
        #         Quando eu faço uma transferência eletrônica de R$ 500
        #         Mas neste momento caiu um débito automático de R$ 600
        #         Então vejo a mensagem "Saldo insuficiente"
        #         E meu saldo final serã de R$ 400

        # Cenario: Nova tarefa
        #     Dado que eu acesso a página de cadastro de tarefas
        #     E preencho o campo nome com "Fazer compras"
        #     E preencho o campo data com "20/08/2018"
        #     E preencho o campo Tags com "Compras, Supermercado, Ketchup"
        #     Quando eu clico em cadastrar
        #     Então esta tarefa é cadastrada

        http://www.dtsato.com/blog/work/introduzindo_desenvolvimento_orientado_comportamento_bdd/
        https://pt.slideshare.net/inovacaoDBServer/semana-da-mulher-na-tecnologia-introducao-ao-bdd
        https://www.slideshare.net/inovacaoDBServer/introduo-ao-bdd-com-bdd-warriors
        https://bddwarriors.wordpress.com/regras/