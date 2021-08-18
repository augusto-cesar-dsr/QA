Before do
  puts 'estou sendo executando antes de cada cenário'
  @soma = 5 + 5
end

After do
  puts 'estou sendo executando depois de cada cenário'
end

Before '@comeco' do
  puts 'estou sendo executando apenas nesse cenário'
end

After '@final' do
  puts 'estou sendo executando apenas nesse cenário'
end