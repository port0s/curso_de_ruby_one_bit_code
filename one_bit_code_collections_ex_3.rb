#!/usr/bin/env ruby

# -*- coding: utf-8 -*-


# https://stackoverflow.com/questions/27664050/ruby-freeze-method

# .freeze: impede a modificação do Hash (retorna o objeto congelado).
NUMBER = { A: 10, B: 30, C: 20, D: 25, E: 15 }.freeze


# ---------- SELECT ---------- #

# Baseado no conhecimento dos valores dentro do vetor.
maior_valor = NUMBER.select do |chave, valor|
  # Selecione a chave conforme o valor for igual a 30.
  "#{chave} #{valor}" if valor == 30
end

# Exiba a resposta.
p maior_valor

# ----------   //   ---------- #


# ---------- EACH ---------- #

# Variável que recebe o maior valor.
maior_valor_listado = NUMBER.values.max

# Para cada chave e valor dentro de NUMBER.
NUMBER.each do |chave, valor|
  # Verifique se o valor corresponde à variável.
  if valor == maior_valor_listado
    # Entaão exiba tanto a chave quanto este valor.
    p "#{chave} => #{valor}"
  end
end

# ---------- // ---------- #


# ---------- WHILE ---------- #

# Declaração de variáveis a serem utilizadas.
contador = maior_valor = chave = 0

# While vai de 0 até quatro.
while contador < 4

  # Se o contador for a primeira passagem, o primeiro será o maior valor.
  if contador == 0
    maior_valor = NUMBER.values[1]
    chave = NUMBER.keys[1]

  # Senão, armazena em maior_valor conforme a posição do contador.
  else
    # Pra facilitar: se o valor armazenado for menor que o novo valor,
    # este novo valor se torna o maior_valor.
    if maior_valor < NUMBER.values[contador]
      maior_valor = NUMBER.values[contador]
      chave = NUMBER.keys[contador]
    end
  end

  # Variável contador recebe +1 a cada novo ciclo.
  contador += 1
end

# Exibe a chave e o valor.
p "#{chave} => #{maior_valor}"

# ----------   //   ---------- #
