Dado('eu tenha {int} laranjas.') do |var|
  # Dado('eu tenha {float} laranjas.') do |float|
  @laranjas = var
end
  
Quando('eu como {int} laranjas.') do |var1|
  # Quando('eu como {float} laranjas.') do |float|
  @comer = var1
  @resultado_sub = @laranjas - @comer

end

Quando('eu compro {int} laranjas.') do |var2|
  # Quando('eu compro {float} laranjas.') do |float|
  @compradas = var2
  @resultado_soma = @laranjas + @compradas
end

Então('eu vejo quantas laranjas sobraram.') do
  expect(@resultado_sub).to eq 8
end

Então('eu vejo quantas laranjas eu tenho.') do
  expect(@resultado_soma).to eq 15
end