#language:pt

@remove
Funcionalidade: Remover do carrinho
    Para que eu possa manter meu carrinho apenas com itens desejados
    Sendo um cliente que já desistiu de um ou mais produtos
    Posso remover itens do meu carrinho

    Contexto: Inserir itens no carrinho
        Quando acesso a lista de restaurantes
        Quando eu escolho o restaurante "Bread & Bakery"
        Dado que eu tenho os seguintes itens no carrinho
            | nome                   | preco    | quantidade |
            | Cup Cake               | R$ 8,70  | 1          |
            | Donut                  | R$ 2,50  | 1          |
            | Pão Artesanal Italiano | R$ 15,00 | 1          |

    @remove1
    Cenario: Remover 1 item
        Quando eu removo somente o item 1
        Então o valor total deve ser de "R$ 24,60"

    @removeTodos
    Cenario: Remover todos os itens
        Quando eu removo todos os itens
        Então vejo a seguinte mensagem no carrinho "Seu carrinho está vazio!"

    @limparCarrinho
    Cenario: Limpar Carrinho
        Quando eu limpo o meu carrinho
        Então vejo a seguinte mensagem no carrinho "Seu carrinho está vazio!"