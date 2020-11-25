
Before do
    page.current_window.resize_to(1440, 920)
    @carrinhoPage = CarrinhoPage.new
    @cardapioPage = CardapioPage.new
    @restaurantePage = RestaurantePage.new
    @fecharCarrinhoPage = FecharCarrinhoPage.new
end

After do |scenario|
    if scenario.failed? #se o cenario falhar, tira screenshot
        shot_file = page.save_screenshot("log/screenshot.png")
        shot_b64 = Base64.encode64(File.open(shot_file, "rb").read)
        embed(shot_b64, "image/png", "Screenshot")
    end
end