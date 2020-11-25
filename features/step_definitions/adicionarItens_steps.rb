Dado("que o produto desejado é {string}") do |produto|
    @produto_nome = produto
end
  
Dado("o valor do produto é de {string}") do |valor|
    @produto_valor = valor
end
  
Quando("eu adiciono {int} unidade\\(s)") do |quantidade|
    quantidade.times do
        @cardapioPage.adicionarUmItem(@produto_nome)
    end
end
  
Então("deve ser dicionado {int} unidade\\(s) deste item") do |quantidade|
    expect(@carrinhoPage.carrinho).to have_text "(#{quantidade}x) #{@produto_nome}"
end
  
Então("o valor total deve ser de {string}") do |valorTotal|
    expect(@carrinhoPage.valorTotal).to have_text valorTotal
end

Dado("que os produtos desejados são:") do |table|
    @product_list =  table.hashes
end
  
Quando("eu adiciono todos os itens") do
    @product_list.each do |i|
        i['quantidade'].to_i.times do
            @cardapioPage.adicionarUmItem(i["nome"])
        end
    end
end
  
Então("vejo todos os itens no carrinho") do
    @product_list.each do |p|
        expect(@carrinhoPage.carrinho).to have_text "(#{p["quantidade"]}x) #{p["nome"]}"
    end
end