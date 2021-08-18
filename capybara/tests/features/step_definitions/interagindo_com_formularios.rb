Quando('eu faco cadastro') do
  visit '/users/new'
  fill_in(id:'user_name', with: 'Augusto, ')
  find('#user_lastname').set('O César')
  find('#user_email').send_keys('teste@teste.com')
  fill_in(id:'user_address', with: 'Rua 0')
  find('#user_university').set('UFG')
  find('#user_profile').send_keys('developer')
  fill_in(id:'user_gender', with: 'Male')
  find('#user_age').set('22')
  find('input[value="Criar"]').click
  sleep(15)
end

Entao('verifico se fui cadastrado') do
  texto = find('#notice')

  expect(texto.text).to eql 'Usuário Criado com sucesso'
  
end