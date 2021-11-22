puts "Qual o seu nome?"
nome = gets.chomp
puts "informe a sua idade"
idade = gets.chomp.to_i

if (idade >= 18)
  puts nome + ", você pode tirar carteira de motorista."
elsif (idade <= 17)
  puts nome + ", melhor continuar andando de bicicleta."
else
  puts nome + ", você é muito jovem e só pode andar de motoquinha."
end
