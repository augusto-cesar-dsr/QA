Quando("eu cadastro o usuário.") do
  visit '/users/new'
  fill_in(id: 'user_name', with: 'guss')
  find('#user_lastname').set('ghost')
  fill_in(id: 'user_email', with: 'teste@teste.com')
  find('input[value="Criar"]').click
end

Então("verifico se o usuário foi cadastrado.") do
  texto = find('#notice')
  expect(texto.text).to eql 'Usuário Criado com sucesso'
end

Quando("edito um usuário.") do
  sleep(5)
end

Então("verifico se o usuário foi editado.") do
  
end