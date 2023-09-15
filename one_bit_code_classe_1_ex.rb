#!/usr/bin/env ruby

# -*- coding: utf-8 -*-


# Classe pai.
class Esportista

  def competir
    "Participando de uma competição."
  end

end


# Classe filha1.
class JogadorDeFutebol < Esportista

  def correr
    "Correndo atrás da bola."
  end

end


# Classe filha2.
class Maratonista < Esportista

  def correr
    "Percorrendo do circuito"
  end

end


# Intância do objeto jogador1.
jogador1 = JogadorDeFutebol.new

# Exibição dos métodos de jogador1:
# competir (classe Pai)
# correr (classe Filha)
p "#{jogador1.competir} #{jogador1.correr}"

# Intância do objeto maratonista1.
maratonista1 = Maratonista.new

# Exibição dos métodos de maratonista1:
# competir (classe Pai)
# correr (classe Filha)
p "#{maratonista1.competir} #{maratonista1.correr}"
