História de Usuário

    Qualidade de Software começa na especificação

Você foi contratado para trabalhar no Ninja Bank (uma nova startup que vai concorrer com a nuBank #SQN)

    O diferencial desta startup é que ela terá uma rede própria de atendimento por caixas eletrônicos.

Seu PO, Analista de Negócio ou Cliente envia para você um email solicitando e explicando como funciona o saque do banco:

Veja a seguinte estória de usuário:

Estória: Saque no Caixa Eletrônico

    Sendo um cliente que é correntista do Ninja Bank

    Posso sacar dinheiro

    Para que eu consiga comprar em lugares que não aceitam débito ou crédito. (mesmo estando no século 21 hahaha)


Existem 3 pontos chaves que são fundamentais nas estórias de usuário, são eles:

    Quem? Para quem estamos desenvolvendo a funcionalidade.
    O que? Uma descrição resumida da funcionalidade em si.
    Por que? O motivo pelo qual o cliente precisa desta funcionalidade. Se possível citando o ganho de negócio.

Normalmente para responder as três perguntas citadas acima nós usamos o SENDO... POSSO... PARA QUE... 


Beleza, mas como testar?

Para isto podemos usar a técnica do BDD (Behavior Driven Development) de Dan North, onde as palavras chave Dado que... Quando... Então... nos apoiam na criação de ricos cenários de teste. 

Vejam os exemplos abaixo:


    Cenário: Saque em conta corrente
        Dado que eu tenho R$ 1000 em minha conta corrente
        Quando faço um saque de R$ 200
        Então meu saldo final deve ser R$ 800


    Cenário: Deu ruim não tenho saldo
        Dado que eu tenho R$ 0 em minha conta corrente
        Quando faço um saque de R$ 100
        Então vejo a mensagem "Saldo insuficiente para saque :("
        E meu saldo final deve ser R$ 0


    Cenário: Tenho saldo mas não o suficiente
        Dado que eu tenho R$ 500 em minha conta corrente
        Quando faço um saque de R$ 501
        Então vejo a mensagem "Saldo insuficiente para saque :("
        E meu saldo final deve ser R$ 500


    Cenário: Limite por saque :(
        Dado que eu tenho R$ 1000 em minha conta corrente
        Quando faço um saque de R$ 701
        Então vejo a mensagem "Limite máximo por saque é de R$ 700"
        E meu saldo final deve ser R$ 1000