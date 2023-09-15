#!/usr/bin/env ruby

# -*- coding: utf-8 -*-

# Declaração do módulo.
module Person

  # Declaração da classe Jurídica,
  class Juridic

    # Declaração do método construtor.
    def initialize nome, cnpj
      @nome = nome
      @cnpj = cnpj
    end

    # Declaração do método que mostra os dados adicionados.
    def add
      p "Pessoa Jurídica Adicionada"
      p "nome: #{@nome}"
      p "cnpj: #{@cnpj}"
    end

  end

  # Declaração da classe Physical.
  class Physical

    # Declaração do método construtor.
    def initialize nome, cpf
      @nome = nome
      @cpf = cpf
    end

    # Declaração do método que mostra os dados adicionados.
    def add
      p "Pessoa Física Adicionada"
      p "nome: #{@nome}"
      p "cpf: #{@cpf}"
    end

  end

end

# Módulo::Classe.new('argumento1 do construtor', 'argumento2 do construtor').método.
Person::Juridic.new('M. C. Investimentos', '4241.123/0001').add

# Módulo::Classe.new('argumento1 do construtor', 'argumento2 do construtor').método.
Person::Physical.new('José Almeida', '425.123.123-123').add
