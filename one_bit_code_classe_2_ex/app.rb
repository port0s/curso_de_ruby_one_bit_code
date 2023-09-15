#!/usr/bin/env ruby

# Chamadas dos arquivos de locais específicos, no caso, mesma pasta.
require_relative "produto"
require_relative "mercado"

# Instância do objeto produto1, da classe Produto.
produto1 = Produto.new

# Ṕassagem de valor de maneira direta aos atributos nome e preco, da classe Produto.
produto1.nome = 'Boracha Prenha do Joaquim'
produto1.preco = 10.00

# Instância do objeto mercado1, da classe Mercado, cujo valor inicial (do construtor)
# é a instância (objeto produto1 e seus valores) da classe Produto.
mercado1 = Mercado.new(produto1)

# Chamada do método comprar, da classe Mercado, que mostra os dados de compra.
mercado1.comprar
