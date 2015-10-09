# encoding: utf-8
class Biblioteca
	attr_reader :livros #permite que o array possa ser lido de fora da classe

	def initialize
		@livros = [] #declara um array vazio
	end

	def adiciona(livro)
		@livros << livro #faz append do objeto no array
	end
end