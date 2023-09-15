#!/usr/bin/env ruby

# -*- coding: utf-8 -*-


# https://rubynostrilhos.com.br/2018/02/20/aprenda-a-diferenca-entre-proc-lambda-e-block.html


# lambda recebe uma variável nome e o exibe com a primeira letra maiúscula,
lambda = -> (nome) {p nome.capitalize}

# Método que recebe um lambda.
def capitalize_name lambda

  # Chamada da lambda, com variável a ser passada.
  lambda.call('júnior')
  lambda.call('bongo')

end

# Chamada do método com a passagem da variável lambda.
capitalize_name(lambda)


# Funciona, mas não eibe o print.
# lambda2 = -> { gets.chomp.capitalize { p "Qual seu nome? " } }


# Método que recebe um lambda.
def capitalize_name2 lambda2

  # Chamada da lambda, realizada pela call.
  lambda2.call
  lambda2.call

end


# lambda2 recebe uma lambda, que contém um print e depois exibe o pego capitalizado.
lambda2 = -> do
  print "Qual seu nome? "
  p gets.chomp.capitalize
end

# Chamada do método, com a passagem da variável lambda.
capitalize_name2(lambda2)
