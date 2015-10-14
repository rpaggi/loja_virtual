# encoding: utf-8
class Biblioteca
	attr_reader :livros #permite que o array possa ser lido de fora da classe

	def initialize
		#@livros = [] #declara um array vazio 
      @livros = {} #Inicializa com um hash
	end

	def adiciona(livro)
		@livros[livro.categoria] ||= []
      @livros[livro.categoria] << livro  
		#@livros << livro #faz append do objeto no array
	end

	def livros
		@livros.values.flatten
	end

	def livros_por_categoria(categoria)
		@livros[categoria].each do |livro|
			yield livro if block_given?
		end
	end
end
