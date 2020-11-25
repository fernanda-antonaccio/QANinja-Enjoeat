Quando("eu fecho o meu carrinho") do
    @carrinhoPage.fecharPedido
end
  
Então("o valor total de itens deve ser igual a {string}") do |total|
    expect(@fecharCarrinhoPage.totalItens).to have_text total
end
  
Então("o valor do frete deve ser igual a {string}") do |total|
    expect(@fecharCarrinhoPage.totalFrete).to have_text total
end
  
Então("o valor total da compra deve ser igual a {string}") do |total|
    expect(@fecharCarrinhoPage.totalPedido).to have_text total
end

Quando("informei os meus dados de entrega:") do |table|
    user = table.rows_hash
    @fecharCarrinhoPage.preencherDados(user)
end
  
Quando("clico na forma de pagamento {string}") do |pagamento|
    @fecharCarrinhoPage.formaPagamento(pagamento)
end
  
Quando("eu clico em Finalizar Pedido") do
    @fecharCarrinhoPage.finalizarPedido
end
  
Então("devo ver a seguinte mensagem:") do |mensagem|
    expect(@fecharCarrinhoPage.mensagemFinaliza).to have_text mensagem
end