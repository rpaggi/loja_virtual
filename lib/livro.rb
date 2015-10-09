# encoding: utf-8
class Livro
	#attr_writer :preco
	#attr_reader :preco
	attr_accessor :preco #Este metodo faz o trabalho dos dois acima

   def initialize(autor, isbn = "1", numero_de_paginas, preco)
      @autor = autor
      @isbn = isbn
      @numero_de_paginas = numero_de_paginas
      @preco = preco
   end

   #Este faz o puts sair mais "amigavel"
   def to_s
      "Autor: #{@autor}, Isbn: #{@isbn}, Páginas: #{@numero_de_paginas}, Valor: #{@preco}"
   end
end