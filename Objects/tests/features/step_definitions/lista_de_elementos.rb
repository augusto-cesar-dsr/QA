Quando('mapeio uma tabela.') do
  @lista_de_elementos = MapeandoListas.new
  @lista_de_elementos.load
  # puts @lista_de_elementos.lista.size
  # puts @lista_de_elementos.lista[0].text
  expect(@lista_de_elementos.lista.size).to eq 24
  i = 0
  @lista_de_elementos.lista.each do |listas|
    print listas.text << ' '
    i += 1
    if i == 3
      puts
      i = 0
    end
  end 
end