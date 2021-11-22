describe "Caixas de Seleção", :checkbox do
  #gancho do rspec para todos os cenarios visitar a pagina antes e fechar depois
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/checkboxes"
  end

  it "marcando uma opção" do
    check("thor")
  end

  it "desmarcando uma opção" do
    uncheck("antman")
  end

  it "marcando com find set true" do
    find("input[value=cap]").set(true)
  end

  it "desmarcando com find set false" do
    find("input[value=guardians]").set(false)
  end

  after(:each) do
    sleep 3
  end
end
