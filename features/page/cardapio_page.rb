
class CardapioPage
    include Capybara::DSL

    def adicionarUmItem(produtoNome)
        find('.menu-item-info-box', text: produtoNome.upcase).find('.add-to-cart').click
    end

    def itens
        all('.menu-item-info-box')
    end

    def informacoes
        find('#detail')
    end
end