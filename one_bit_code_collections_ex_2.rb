#!/usr/bin/env ruby

# Declaração de dicionário vazio.
dicionario = Hash.new

# Roda três vezes.
3.times do

  # Exibe a informação na tela.
  print "Digite a chave: "

  # Armazena o valor da armazenado na variável chave no dicionário.
  dicionario[chave = gets.chomp]

  # Exibe a informação na tela.
  print "Digite o valor: "

  # Recebe o valor digitado pelo usuário e armazena dentro da chave.
  dicionario[chave] = gets.chomp

end

# Percorre o hash e exibe a frase abaixo.
dicionario.each do |chave, valor|
  puts "A chave é #{chave} e seu valor é #{valor}"
end
