Dado("que o nome da minha tarefa é {string}") do |nova_tarefa| #Aqui eu tenho que garantir que minha tarefa é única! Ela não existe no sistema
    @nome_tarefa = nome_tarefa
  end
  
  Dado("a data de finalização será {string}") do |data_finalizacao|
    @data_tarefa = data_finalizacao
  end
  
  Dado("quero taguear esta tarefa com:") do |tags|
    @tags = tags.hashes #método do Ruby para mexer com array. Array de tags. Nesse casso, um array com 3 posições
  #puts @tags.class - aqui quando eu rodar o cucumber ele irá me mostrar o array tageado
  end
  
  Quando("faço o cadastro desta tarefa") do
    @tarefas_page.cadastrar(@nome_tarefa, @data_tarefa)
  end
  
  Então("devo ver esta tarefa com o status {string}") do |status_tarefa|
    #expect(@tarefas_page.painel).to have_content status_tarefa #Esse tipo de verificação não é boa. Pois se tiver outra tarefa com esse status, ele pega. E pode ser que dê um falso positivo
    #O que eu preciso fazer é... buscar na gride um elemento que dê match com o texto que eu vou passar
    #Fazer um tasks tbody primeiro... Para depois fazer o tr
    #Não é legal fazer ('#tasks tbody tr') [0], para ele trazer a última tarefa cadastrada.
    #Eu posso ter a situação de nesse momento ter alguém mexendo no banco e cadastrar a mesma coisa.
    #E se o sistema mudar? Ser por ordem alfabética, status...
    #a linha abaixo ficou muito grande. não deixar numa só linha
    #expect(@tarefas_page.buscar_tr(@nome_tarefa)).to have_content status_tarefa 
    expect(
      @tarefas_page.buscar_tr(@nome_tarefa)
    .to have_content status)
  end