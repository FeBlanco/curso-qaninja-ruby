# RUBY É UMA LINGUAGEM CONSIDERADA PURAMENTE ORIENTADA A OBJETOS
# PORQUE NO RUBY TUDO É OBJETO

# CLASSE POSSUI ATRIBUTOS E MÉTODOS
# CARACTERÍSTICAS E AÇÕES

# CARRO (NOMES, MARCA, MODELO, COR,QUANTIDADE DE PORTAS, ETC...)
# ligar, BUSINAR, PARAR, ETC...

class Carro
  attr_accessor :nome

  def ligar
    puts "O carro está pronto para iniciar o trajeto"
  end
end

civic = Carro.new
civic.nome = "Civic"

puts civic.nome

civic.ligar
