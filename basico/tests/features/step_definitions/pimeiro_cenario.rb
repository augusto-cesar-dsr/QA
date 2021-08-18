Quando('eu somo {int} + {int}') do |v1, v2|
  # Quando('eu somo {int} {float} {float}') do |int, float, float2|
  # Quando('eu somo {float} {float} {int}') do |float, float2, int|
  # Quando('eu somo {float} {float} {float}') do |float, float2, float3|
  # pending # Write code here that turns the phrase above into concrete actions
  @soma = v1+v2
end
  
Então('o resultado tem que ser {int}') do |resultado|
  # Então('o resultado tem que ser {float}') do |float|
  # pending # Write code here that turns the phrase above into concrete actions
  expect(@soma).to eq resultado
end