####### comentários

# isto é um comentario de uma linha

=begin
  isto
  é
  um
  comentário
  multilinhas
=end

############ entradas e e saídas
rescue => exception
  
end

puts "digite seu nome:" #printa algo na tela
nome = gets # captura escrita no terminal ate o \n
puts "Olá #{nome}" # expressão regular em ruby

#### saída
# digite seu nome:
# augusto
# Olá augusto

############## concatenação
var = 'guss'
puts 'ola ' + var # cria um novo objeto
puts 'ola ' << var # não cria um novo objeto

############ 