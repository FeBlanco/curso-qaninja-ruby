describe "Mouse Hover", :hovers do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/hovers"
  end

  it "Quando passo o mouse sobre o blade" do
    card = find("img[alt=Blade]") #Seletor css que contém a palavra ("img[alt*=Blade]")
    card.hover

    expect(page).to have_content "Nome: Blade"
  end

  it "Quando passo o mouse sobre o pantera negra" do
    card = find('img[alt="Pantera Negra"]') #Seletor css que começa com a palavra ('img[alt^=Pantera]') retire as aspas duplas
    card.hover

    expect(page).to have_content "Nome: Pantera Negra"
  end

  it "Quando passo o mouse sobre o homem aranha" do
    card = find('img[alt="Homem Aranha"]') #Seletor css que a palavra termina ('img[alt$=Aranha]') retire as aspas duplas
    card.hover

    expect(page).to have_content "Nome: Homem Aranha"
  end

  after(:each) do
    sleep 2
  end
end
