describe "Forms" do
  it "login com sucesso" do
    visit "https://training-wheels-protocol.herokuapp.com/login"

    fill_in "userId", with: "stark"
    fill_in "password", with: "jarvis!"

    click_button "Login"

    expect(find("#flash").visible?).to be true
    #Sintaxe para verificar se um valor tem na string include// para comparar se é igual usa-se eql
    expect(find("#flash").text).to include "Olá, Tony Stark. Você acessou a área logada!"
    #Sintaxe mais simples para verificar se contem a menssagem esperada
    expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"
  end
end
