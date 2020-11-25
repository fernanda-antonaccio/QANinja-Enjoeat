Quando("acesso a lista de restaurantes") do
    @restaurantePage.navegador
end

#esquema
Então("cada restaurante deve ter {int} {string} {string} {string} {float}") do |id, nome, categoria, entrega, avaliacao|
    restaurants = @restaurantePage.listaRestaurante
    expect(restaurants[id]).to have_text nome.upcase
    expect(restaurants[id]).to have_text categoria
    expect(restaurants[id]).to have_text entrega
    expect(restaurants[id]).to have_text avaliacao
end

#tabela
Dado("que temos os seguintes restaurantes") do |table|
    @restaurant_data = table.hashes
end
  
Então("devo ver todos os restaurantes desta lista") do
    restaurants = @restaurantePage.listaRestaurante
    @restaurant_data.each_with_index do |value, index|
        expect(restaurants[index]).to have_text value['nome'].upcase
        expect(restaurants[index]).to have_text value['categoria']
        expect(restaurants[index]).to have_text value['entrega']
        expect(restaurants[index]).to have_text value['avaliacao']
    end
end