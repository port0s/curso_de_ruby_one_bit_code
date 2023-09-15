#!/usr/bin/env ruby

# Declaração de array vazio.
vetor = []

# For que percorre o intervalo de 1 até 3.
for contador in (1..3)

  # Exibe a mensagem na tela
  print "Digite o #{contador}º: "

  # Pega o digitado e armazena no vetor.
  # numero = gets.chomp.to_i
  vetor.push(gets.chomp.to_i)

# Fim do for.
end

# Mapeamento e multiplicação por 2 de cada elemento.
vetor.map! do |iterador|
  iterador * 2
end

# Exibe o resultado.
p vetor
