describe "Dynamic Control", :dc do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/dynamic_controls"
  end

  it "quando habiita o campo" do

    #quando tem a propriedade disabled true o campo está habilitado
    #quando não tem a propriedade disabled o campo está habilitado
    #page.has_field = nessa pagina tem um campo tal?

    resultado = page.has_field? "movie", disabled: true
    puts resultado

    click_button "Habilita"

    resultado = page.has_field? "movie", disabled: false
    puts resultado
  end
end
