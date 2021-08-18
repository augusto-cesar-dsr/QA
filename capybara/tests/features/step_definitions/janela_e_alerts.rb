Quando('eu entro na janela e verifico a mensagem') do
  visit '/mudancadefoco/janela'
  
  #janela recebe janela que foi aberta
  janela = window_opened_by do
    
    click_link 'Clique aqui'
    # sleep(2)
  end

  # mudando o foco para a nova janela aberta
  within_window janela do
    
    expect(current_url).to eq 'http://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
    
    @mensagem = find('.red-text.text-darken-1.center')
    # puts @mensagem.text
    expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
    
    # sleep(2)
    janela.close

    # sleep(2)
  end

  #segundo jeito
  click_link 'Clique aqui'
  switch_to_window windows.last
  expect(current_url).to eq 'http://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
  
  @mensagem = find('.red-text.text-darken-1.center')
  # puts @mensagem.text
  expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
  windows.last.close
  
end

Quando('eu entro no alert e verifico faco a acao') do
  visit '/mudancadefoco/alert'
  find('button[onclick="jsAlert()"]').click
  page.accept_alert
  find('button[onclick="jsConfirm()"]').click
  page.dismiss_confirm
  find('button[onclick="jsPrompt()"]').click
  sleep(2)
  page.accept_prompt(with: 'ghost')
  page.dismiss_prompt
  sleep(5)

end