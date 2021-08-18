Quando('eu multiplico minhas {int} pelo {int}.') do |laranjas, valor|
  # Quando('eu multiplico minhas {int} pelo {float}.') do |int, float|
  # Quando('eu multiplico minhas {float} pelo {int}.') do |float, int|
  # Quando('eu multiplico minhas {float} pelo {float}.') do |float, float2|
  @resultado = laranjas*valor
end

Então('eu verifico qual o {int} da multiplicação.') do |resultado|
  # Então('eu verifico qual o {float} da multiplicação.') do |float|
  expect(@resultado).to eq resultado
end