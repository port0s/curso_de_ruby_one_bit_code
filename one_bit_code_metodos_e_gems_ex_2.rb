#!/usr/bin/env ruby

# -*- coding: utf-8 -*-

# Documantação da API => https://www.rubydoc.info/gems/cpf_cnpj/0.5.0

# Caso não tenha instado: gem install cpf_cnpj

# Requisição obrigatória da gem "cpf_cnpj".
require "cpf_cnpj"


print "Qual o CPF? "        # Exibe a pergunta ao usuário.
cpf = gets.chomp            # Recebe a string do usuário e armazema em cpf.

# ex de cpf válido: 000.611.391-57

# Verifica a validação do cpf digitado.
cpf_valido = CPF.valid?(cpf, strict: true)

# Exibe o cpf e se for válido = true, senão = false.
p "#{cpf} => #{cpf_valido}"

# ---------------------------------------------------------------------- #

print "Qual o CPF? "        # Exibe a pergunta ao usuário.
# cpf = gets.chomp            # Recebe a string do usuário e armazema em cpf.
cpf_valido = CPF.valid?(gets.chomp, strict: true)

# Exibe o cpf e se for válido = CPF válido!, senão = CPF inválido!.
p cpf_valido ? 'CPF válido!':'CPF inválido!'
