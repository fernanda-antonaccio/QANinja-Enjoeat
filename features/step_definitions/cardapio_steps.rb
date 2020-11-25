Quando("eu escolho o restaurante {string}") do |restaurante|
    @restaurantePage.escolherRestaurante(restaurante)
end
  
Então("vejo os seguintes itens disponiveis no cardápio") do |table|
    info = @cardapioPage.itens
    informacoes = table.hashes
    informacoes.each_with_index do |value, index|
        expect(info[index]).to have_text value['produto'].upcase
        expect(info[index]).to have_text value['descricao']
        expect(info[index]).to have_text value['preco']
    end
end

Então("vejo as seguintes informações adicionais:") do |table|
    info = @cardapioPage.informacoes
    informacoes = table.rows_hash
    expect(info).to have_text informacoes['Categoria']
    expect(info).to have_text informacoes['Descrição']
    expect(info).to have_text informacoes['Horarios']
end