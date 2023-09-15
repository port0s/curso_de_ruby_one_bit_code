# Declaração da classe Mercado.
class Mercado

  # Declaração do método construtor, cujo valor recebido é a instância da classe produto.
  def initialize(produto)

    # Variável de instância da classe Mercado é criada
    # e recebe o valor da variável de instância da classe Produto.
    # Então, em produto está compreendido os atributos da classe Produto: nome e preco.
    @produto = produto

  end


  # Declaração do método comprar, que mostra os valores armazenados na variável de instância @produto.
  def comprar

    # Irá printar na tela as informações do nome e preço do produto.
    p "Você comprou o #{@produto.nome} no valor de #{@produto.preco}"

  end

end
