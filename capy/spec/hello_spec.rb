#Bloco de suíte de teste
describe "Meu primeiro script" do
  #Bloco de Casos de Testes //
  #O visite é do capybara e page.title também, quem valida é o rspec pelo expect
  it "visitar a página" do
    visit "https://training-wheels-protocol.herokuapp.com/"
    expect(page.title).to eql "Training Wheels Protocol"
  end
end
