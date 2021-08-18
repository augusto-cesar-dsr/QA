Dado('que eu tenho umas laranjas') do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  @laranja = table.rows_hash['laranja'].to_i
  if @laranja == nil
    table.hashes.each do |value|
      @laranja = value['laranja'].to_i
    end
  end
end

Quando('eu corto {int} laranjas') do |cortei|
# Quando('eu corto {float} laranjas') do |float|
  @inteiras = @laranja - cortei
end

Então('eu verifico quantas laranjas sobraram inteiras.') do
  expect(@inteiras).to eq 8
end

Dado('que tenho umas laranjas') do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  table.hashes.each do |value|
    @laranja = value['laranja'].to_i
  end  
end

Quando('eu chupo {int} laranjas') do |chupei|
# Quando('eu chupo {float} laranjas') do |float|
  @sobraram = @laranja - chupei
end

Então('eu verifico quantas laranjas sobraram.') do
  expect(@sobraram).to eq 8
end