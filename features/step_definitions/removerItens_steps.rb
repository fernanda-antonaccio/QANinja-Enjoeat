Dado("que eu tenho os seguintes itens no carrinho") do |table|
    @product_list = table.hashes
    steps %{
        Quando eu adiciono todos os itens
    }
end
  
Quando("eu removo somente o item {int}") do |posicao|
    @carrinhoPage.excuirItem(posicao)
end

Quando("eu removo todos os itens") do
    sleep 1
    @product_list.each_with_index do |value, posicao|
        @carrinhoPage.excuirItem(posicao)
    end
end
  
Então("vejo a seguinte mensagem no carrinho {string}") do |mensagem|
    expect(@carrinhoPage.carrinho).to have_text mensagem
end

Quando("eu limpo o meu carrinho") do
    @carrinhoPage.limparCarrinho
end