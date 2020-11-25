
class RestaurantePage
    include Capybara::DSL

    def navegador
        visit '/restaurants'
    end

    def listaRestaurante
        all('.restaurant')
    end

    def escolherRestaurante(restaurante)
        find(".place-info-box-text", text: restaurante.upcase).click
    end
end