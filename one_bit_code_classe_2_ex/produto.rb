# Declaração da classe Produto.
class Produto

  # O que é o attr_accessor no Ruby?
  # => https://pt.stackoverflow.com/questions/63680/o-que-%C3%A9-o-attr-accessor-no-ruby

  # Em resumo, pode-se dizer que:
  # declara @nome, @preco = nil

  # cria get nome igual a def nome @nome end e
  # cria get preco igual a def nome @preco end

  # além disso, cria set nome igual a def nome=valor @nome = valor end e
  # por fim, cria set nome igual a def preco=valor @preco = valor end
  attr_accessor :nome, :preco

end
