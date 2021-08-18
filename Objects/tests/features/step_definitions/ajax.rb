Quando('clico no botao.') do
  @ajax = AjaxPage.new
  @ajax.load
  # sleep(5)
  @ajax.clicar_botao
  # sleep(15)
end

Entao('verifico se apareceu') do
  @ajax.wait_until_mensagem_visible
  expect(@ajax.mensagem.text).to eq 'Você Clicou no Botão!'
end