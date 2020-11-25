#language: pt

@fecharPedido
Funcionalidade: Finalizar pedido
    Para que eu possa receber o pedido no meu endereço
    Sendo um usuário fechou o carrinho com itens
    Posso finalizar o meu pedido

    Contexto: 
        Quando acesso a lista de restaurantes
        Quando eu escolho o restaurante "Green Food"
    
    Cenario: Finalizar pedido com cartão refeição
        Dado que eu tenho os seguintes itens no carrinho
            | quantidade | nome                | descricao                                | subtotal |
            | 1          | SUCO DETOX          | Suco de couve, cenoura, salsinha e maçã. | R$ 14,90 |
            | 2          | HAMBURGER DE QUINOA | Cheio de fibras e muito saboroso.        | R$ 21,00 |
        Quando eu fecho o meu carrinho
        E informei os meus dados de entrega:
            | nome        | Fernanda           |
            | email       | fernanda@gmail.com |
            | endereco    | Avenida Paulista   |
            | numero      | 1001               |
            | complemento | 17 andar           |
        E clico na forma de pagamento "Cartão Refeição"
        Quando eu clico em Finalizar Pedido
        Então devo ver a seguinte mensagem:
        """
        Seu pedido foi recebido pelo restaurante. Prepare a mesa que a comida está chegando!
        """