#language: pt

Funcionalidade: Login do Usuario
    Sendo um usuario cadastrado
    Posso fazer login no sistema
    Para ver minhas tarefas
@csu
Cenário: Login com sucesso
    Dado que acessei o site do Marktasks
    Quando acesso o sistema com:
    |Nome |Isabela   |
    |Email|isabela@aa|
    |Senha|12345     |
    Então visualizo a pagina de tarefas

    
