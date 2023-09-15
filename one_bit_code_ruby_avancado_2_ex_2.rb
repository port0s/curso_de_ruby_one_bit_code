#!/usr/bin/env ruby

# -*- coding: utf-8 -*-

# String usada no programa.
string = "Um fusca de cor amarela viaja a 80km/h"


# Declaração da classe usada.
class Carro

  # Método que será acessado externamente e irá acessar o método privado da classe.
  def get_km string
    # Recebe a string passada externamente e já enfia ao método privado como parâmetro.
    find_km string
  end


  # Declaração do método que irá encontrar a expressão dentro da string.
  def find_km string
    # Armazena valor buscado na string, caso não encontrado, retorna nil.
    # regex = /80km\/h/.match(string)
    # Num grupo [], pelo menos um inteiro [\d]+
    # Num grupo [], pelo menos um caracter, incluindo uma barra [\w\/]+.
    regex = /[\d]+[\w\/]+/.match(string)

    # Exibe a resposta encontrada ou o valor nil.
    p regex
  end


  # Declaração da lista de métodos privados.
  private :find_km

end


# Objeto = Classe.new
carro1 = Carro.new


# Objeto.método(parâmetro)
carro1.get_km(string)
