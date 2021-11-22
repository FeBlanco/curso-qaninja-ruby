describe "Caixa de opções", :dropdown do
  it "Item especifico simples" do
    visit "https://training-wheels-protocol.herokuapp.com/dropdown"
    select("Loki", from: "dropdown")
    sleep 3 #temporario
  end

  #find metodo de buscar um elemento do capybara
  it "Item especifico find" do
    visit "https://training-wheels-protocol.herokuapp.com/dropdown"
    drop = find(".avenger-list")
    drop.find("option", text: "Scott Lang").select_option
    sleep 3 #temporario
  end
  # find somente um elemento, all muitos elementos, sample tecnica do ruby para sorteio dentro de um array
  it "qualquer item", :sample do
    visit "https://training-wheels-protocol.herokuapp.com/dropdown"
    drop = find(".avenger-list")
    drop.all("option").sample.select_option
  end
end
