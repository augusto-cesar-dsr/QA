Dado('que eu tenho {int} laranjas na bolsa.') do |laranjas|
  # Dado('que eu tenho {float} laranjas na bolsa.') do |float|
  @laranjas = laranjas
end

Quando('eu coloco {int} laranjas na bolsa.') do |var|
  # Quando('eu coloco {float} laranjas na bolsa.') do |float|
  @soma = @laranjas + var
end

Então('eu verifico se o total das laranjas é {int}.') do |resultado|
  # Então('eu verifico se o total das laranjas é {float}.') do |float|
  expect(@soma).to eq resultado
end

Quando('eu retiro {int} laranjasda bolsa.') do |var|
  # Quando('eu retiro {float} laranjasda bolsa.') do |float|
  @sub = @laranjas - var
end

Então('eu verifico com quantas laranjas eu fiquei na bolsa') do
  # puts 'me sobraram ' << @sub.to_s << ' laranjas'
  expect(@sub).to eq 8
end