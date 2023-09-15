#!/usr/bin/env ruby

# -*- coding: utf-8 -*-


# Requisição de gem a ser usada.
require "easy_translate"


# Declaração do módulo.
module Tradutor

  # Mixins de EasyTranslate
  include EasyTranslate


  # Classe.método = 'chave válida da API google-translate'
  # Insira uma chave válida abaixo.
  EasyTranslate.api_key = ''


# ---------- CLASSE ---------- #

  class ProjetoFinal

    # Método cujo acesso externo é possível, chama os outros dentro da classe.
    def projeto
      frase
      idioma
      traduzir
      nova_frase
      cria_arquivo
    end


    # ---------- QUAL A FRASE A TRADUZIR ---------- #

    def frase

      # Pede e armazena a frase a ser taduzida.
      print "Qual a frase a ser traduzida? "
      @frase = gets.chomp

    end

    # ----------            //           ---------- #


    # ---------- QUAL O IDIOMA DA FRASE ---------- #

    def idioma

      # Pergunta e armazena o idioma ao qual a frase digitada pretence.
      print "Em qual idioma está a frase? [ex: spanish ou es]\n>> "
      @idioma_da_frase = gets.chomp

      # Objeto = Classe.método(parâmetro).
      # Variável idioma_da_frase recebe a detecção do idioma que foi digitado.
      @idioma_da_frase = EasyTranslate.detect @idioma_da_frase

      # Dicionário = {:chave => valor}
      # Dicionário recebe a chave :from, que é da própria gem EasyTranslate
      # e o valor do idioma, que será o da frase digitada, detectado.
      @de = {:from => @idioma_da_frase}

    end

    # ----------           //           ---------- #


    # ---------- PARA QUAL TRADUZIR ---------- #

    def traduzir

      # Pede o idioma para o qual se deseja traduzir a frase.
      print "Para qual idioma deseja traduzir? [ex: pt ou english]\n>> "

      # Pega o que foi digitado e armazena na variável idioma_a_traduzir.
      @idioma_a_traduzir = gets.chomp

      # Objeto = Classe.método(parâmetro).
      # Variável idioma_a_traduzir recebe a detecção do idioma que foi digitado.
      @idioma_a_traduzir = EasyTranslate.detect @idioma_a_traduzir

      # Dicionário = {:chave => valor}
      # Dicionário recebe a chave :to, que é da própria gem EasyTranslate
      # e o valor do idioma, que será o de tradução, detectado.
      @para = {:to => @idioma_a_traduzir}

    end

    # ----------         //         ---------- #


    # ---------- FRASE TRADUZIDA ---------- #

    def nova_frase

      # Objeto = Classe.método('frase', :de => :idioma_a_traduzir, :para => :idioma_da_frase)
      @nova_frase = EasyTranslate.translate(@frase, @de, @para)

      # Exibe a frase traduzida.
      p @nova_frase

    end

    # ----------        //       ---------- #


    # ---------- CRIA UM ARQUIVO E ARMAZENA A FRASE ---------- #

    def cria_arquivo

      # Objeto = Classe.now
      # Retorna a hora do sistema.
      time = Time.now

      # Objeto = objeto.método('%dia-%mês-%ano hora:minutos:segundo')
      hora = time.strftime('%d-%m-%y %H:%M:%S')

      # Claase.método('arquivo', 'sobrescreva o arquivo') em cada |linha|
      # OBS: caso não exista o arquivo, será criado através dessa chamada.
      File.open("#{hora}.txt", 'w') do |linha|

        # Linha.escreva(conforme cada linha retornada da requisição)
        # Irá escrever nas linhas conforme o que vier em @nova_frase.
        linha.puts(@nova_frase)

      end

    end

    # ----------                   //               ---------- #


    # Métodos da classe que são privados.
    private :frase, :idioma, :traduzir, :nova_frase, :cria_arquivo

  end

  # ----------   //   ---------- #

end
