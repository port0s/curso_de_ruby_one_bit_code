#!/usr/bin/env ruby

# -*- coding: utf-8 -*-


# https://stackoverflow.com/questions/10763820/difference-between-and-regex


# String usada no programa.
strings = "Olá, tudo bem? Meu Whats app é (99)74321-1234"


# ---------- VERSÃO LONGA ---------- #

# Desambiguação:

# \d  = pega 1 inteiro.
# {} = repetição, permite repetir o comando tantas vezes.


# Significado:

  # \(  = pega o símbolo de parenteses esquerdo '('.

  # Junto:
    # \d{2}  = pega 2 inteiros.

  # \)  = pega o símbolo de parenteses direito ')'.

  # Junto:
    # \d{5} = pega 5 inteiros, similar ao de cima.

  # -   = pega um traço.

  # Junto:
    # \d{4} = pega 4 inteiros, similar ao de cima.

regex1 = /\(\d{2}\)\d{5}-\d{4}/.match(strings)

# Exibe o resultado encontrado.
p regex1

# ----------      //      ---------- #


# ---------- VERSÃO CURTA ---------- #

# Desambiguação:

# \d = pega 1 inteiro.
# {} = repetição, permite repetir o comando tantas vezes.
# \w = qualquer caracter do tipo Word(letras).
# [] = grupo de caracteres.
# +  = quantificador que exige pelo menos 1 caracteres buscado, similar a {1,}


# Significado:

  # \(  = pega o símbolo de parenteses esquerdo '('.

  # Junto:
    # \d{2}  = pega 2 inteiros.

  # \)  = pega o símbolo de parenteses direito ')'.

  # Junto:
    # [\w-]+ = num grupo [], pegue pelo menos um (+) caracter word (\w) e o traço (-).

regex2 = /\(\d{2}\)[\d-]+/.match(strings)

# Exibe o resultado encontrado.
p regex2

# ----------      //      ---------- #


# ----------      VERSÃO CURTONA      ---------- #

# Desambiguação:

# \d = pega 1 inteiro.
# {} = repetição, permite repetir o comando tantas vezes.
# \w = qualquer caracter do tipo Word(letras).
# [] = grupo de caracteres.
# +  = quantificador que exige pelo menos 1 caracteres buscado, similar a {1,}


# Significado:

  # Junto:
    # [\(\d\)-]+ =
    # num grupo [],
    # pegue pelo menos um (+)
    # caracter inteiro (\d)
    # um caracter de parenteses direito \(
    # um caracter de parenteses esquerdo \)
    # e um traço (-).

    # Neste caso, irá pegar inteiros dentro dos parenteses,
    # para depois buscar um traço
    # e no final pegar qualquer inteiro que tiver após os números da string usada.
    # Então, (99)74321-1234qa12 -> só pega (99)74321-1234,
    # (99)74321-1234999 -> pega tudo (99)74321-1234999
    # e (99)74321-12349qa1 -> só pega (99)74321-12349.

regex3 = /[\(\d\)-]+/.match(strings)

p regex3

# ----------            //            ---------- #
