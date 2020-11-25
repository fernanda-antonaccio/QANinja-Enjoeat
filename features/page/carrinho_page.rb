
class CarrinhoPage
    include Capybara::DSL

    def carrinho
        find("#cart")
    end

    def excuirItem(posicao)
        carrinho.all('table tbody tr')[posicao].find('.danger').click
    end

    def valorTotal
        carrinho.find('tr', text: 'Total:').find('td')
    end

    def limparCarrinho
        click_button 'Limpar'
    end
 
    def fecharPedido
        find('a[class="btn btn-success"]').click
    end
end