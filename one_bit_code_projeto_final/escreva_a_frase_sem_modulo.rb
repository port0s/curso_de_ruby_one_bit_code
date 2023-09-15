#!/usr/bin/env ruby -wKU

# -*- coding: utf-8 -*-


# Requisição de gem a ser usada.
require "easy_translate"

# Classe.método = 'chave válida da API google-translate'
# Insira uma chave válida abaixo.
EasyTranslate.api_key = ''




# ---------- QUAL A FRASE A TRADUZIR ---------- #

# Pede e armazena a frase a ser taduzida.
print "Qual a frase a ser traduzida? "
frase = gets.chomp

# ----------            //           ---------- #


# ---------- QUAL O IDIOMA DA FRASE ---------- #

# Pergunta e armazena o idioma ao qual a frase digitada pretence.
print "Em qual idioma está a frase? ex: spanish"
idioma_da_frase = gets.chomp

# Objeto = Classe.método(parâmetro).
# Variável idioma_a_traduzir recebe a detecção do idioma que foi digitado.
idioma_da_frase = EasyTranslate.detect idioma_a_traduzir

# Dicionário = {:chave => valor}
# Dicionário recebe a chave :from, que é da própria gem EasyTranslate
# e o valor do idioma, que será o da frase digitada, detectado.
de = {:from => idioma_da_frase}

# ----------           //           ---------- #


# ---------- PARA QUAL TRADUZIR ---------- #

# Pede o idioma para o qual se deseja traduzir a frase.
print "Para qual idioma deseja trazudir? "

# Pega o que foi digitado e armazena na variável idioma_a_traduzir.
idioma_a_traduzir = gets.chomp

# Objeto = Classe.método(parâmetro).
# Variável idioma_a_traduzir recebe a detecção do idioma que foi digitado.
idioma_a_traduzir = EasyTranslate.detect idioma_a_traduzir

# Dicionário = {:chave => valor}
# Dicionário recebe a chave :to, que é da própria gem EasyTranslate
# e o valor do idioma, que será o de tradução, detectado.
para = {:to => idioma_a_traduzir}

# ----------         //         ---------- #


# ---------- FRASE TRADUZIDA ---------- #

# Objeto = Classe.método('frase', :de => :idioma_a_traduzir, :para => :idioma_da_frase)
nova_frase = EasyTranslate.translate(frase, de, para)

# Exibe a frase traduzida.
p nova_frase

# ----------        //       ---------- #
