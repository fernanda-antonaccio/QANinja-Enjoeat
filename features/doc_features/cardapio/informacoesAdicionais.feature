#language:pt

@informacoes
Funcionalidade: Informações Adicionais
    Para que eu possa ver as informações adicionais
    Sendo um usuario que escolheu um restaurante
    Posso ver a categoria, descrição detalhada e horarios de funcionamento

    Contexto: 
        Quando acesso a lista de restaurantes

    #Chave e Valor
    Cenario: Detalhes do restaurante
        Quando eu escolho o restaurante "Bread & Bakery"
        Então vejo as seguintes informações adicionais:
        | Categoria | Padaria                                                                                       |
        | Descrição | A Bread & Brakery tem 40 anos de mercado. Fazemos os melhores doces e pães. Compre e confira. |
        | Horarios  | Funciona de segunda à sexta, de 8h às 23h                                                     |