#!/usr/bin/env ruby

# -*- coding: utf-8 -*-

# Declração do método, caso nenhum valor tenha sido passado: retorna 1.
def potenciacao(base=1, expoente=1)

  return base ** expoente

end


# Base: número que será elevado.
print "Qual a base? "
base = gets.chomp.to_i        # Converte algo para inteiro

# Expoente: número que irá elevar.
print "Qual o expoente? "
expoente = gets.chomp.to_i    # Converte algo para inteiro.

# Armazena apotenciação na vriável resultado.
resultado = potenciacao(base, expoente)

# Exibe a variável resultado.
p "#{resultado}"
