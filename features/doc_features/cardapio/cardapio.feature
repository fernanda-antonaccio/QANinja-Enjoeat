#language:pt

@cardapio
Funcionalidade: Cardapio
    Para que eu possa decidir o que pretendo comer
    Sendo um usuário que escolheu um restaurante
    Posso acessar o cardápio

    Contexto: 
        Quando acesso a lista de restaurantes

    #colula
    @visualizarProduto
    Cenario: Visualizar Produtos
        Quando eu escolho o restaurante "Bread & Bakery"
        Então vejo os seguintes itens disponiveis no cardápio
        | produto                | descricao                           | preco    |
        | Cup Cake               | Cup Cake recheado de Doce de Leite  | R$ 8,70  |
        | Donut                  | Coberto com chantilly               | R$ 2,50  |
        | Pão artesanal Italiano | Pão artesanal com queijos italianos | R$ 15,90 |
    
    @carrinhoVazio
    Cenario: Carrinho vazio
        Quando eu escolho o restaurante "Burger House"
        Então vejo a seguinte mensagem no carrinho "Seu carrinho está vazio!"