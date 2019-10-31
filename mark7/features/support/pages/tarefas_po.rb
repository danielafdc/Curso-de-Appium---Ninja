class TarefasPage
    include Capybara::DSL

    def painel
        find("#task-board")
    end

    def buscar_tr(nome)
        #antes tinha um return aqui. Mas não é necessário pq o ruby faz um return automático
        find('#tasks tbody tr', text: @nome_tarefa)
    end

    def cadastrar(nome, data_finalizacao)
        find("#insert-button").click

        whithin('#add-task') do
        fill_in "title", with: nome #fill_in é uma forma de preencher que usa o id ou name do elemento
        fill_in "dueDate", with: data_finalizacao
        click_button "Cadastrar" #Não usei o id. É um recurso do capybara que pega o elemento botão e clica. Se fosse um link, seria click_link
        end
    end

    #Aqui eu busco a mensagem de alerta e pego o texto que ela me dá. O retorno desse método é string
    def alerta_tarefas
        find('.alert-warn').text
    end
end



#click_link - Para elemento a (link)
#click_button - Para elememento botão
#click_on - para elemento span,div,table,tr,etc...

#Vamos supor que eu tenha 2 botões de Cadastrar na página. Se eu usar o click_on, ele daria ambiguidade e não saberia em qual botão clicar
#Então eu posso trabalhar com o escopo. Para isso eu uso o within. Então ficaria:
# within('#add-task') do
# fill_in "title", with: nome
#     fill_in "dueDate", with: data_finalizacao
#     click_button "Cadastrar"
# end
#Isso acima significa, somente dentro do escopo add-task( é o id do formulário), preencha esses dados.