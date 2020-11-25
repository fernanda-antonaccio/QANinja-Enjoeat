
class FecharCarrinhoPage
    include Capybara::DSL

    def valor
        find('div[class*=col-sm-6]', text: 'Frete e Total:')
    end

    def totalItens
        valor.find('tr', text: 'Itens:').find('td')
    end

    def totalFrete
        valor.find('tr', text: 'Frete:').find('td')
    end

    def totalPedido
        valor.find('tr', text: 'Total:').find('td')
    end

    def preencherDados(user)
        find('input[formcontrolname="name"]').set user[:nome]
        find('input[formcontrolname="email"]').set user[:email]
        find('input[formcontrolname="emailConfirmation"]').set user[:email]
        find('input[formcontrolname="address"]').set user[:endereco]
        find('input[formcontrolname="number"]').set user[:numero]
        find('input[formcontrolname="optionalAddress"]').set user[:complemento]
    end

    def formaPagamento(pagamento)
        pagto = find("mt-radio[formcontrolname=paymentOption]")
        pagto.find("div", text: pagamento).find("div").click
    end

    def finalizarPedido
        click_button 'Finalizar Pedido'
    end

    def mensagemFinaliza
        find(".content")
    end
end