Dado('eu tenho {int} laranjas no estoque.') do |valor|
  # Dado('eu tenho {float} laranjas no estoque.') do |float|
  @laranjas = valor
end

Quando('eu amasso {int} laranjas.') do |var|
  # Quando('eu amasso {float} laranjas.') do |float|
  @resultado = @laranjas - var
end

Então('eu verifico quantas laranjas sobraram no estoque.') do
  expect(@resultado).to eq 8
end

Quando('revendo {int} laranjas') do |var|
  steps %Q{
    Dado eu tenho 10 laranjas no estoque.
  }
  # Quando('revendo {float} laranjas') do |float|
  @resultado = @laranjas - var
end