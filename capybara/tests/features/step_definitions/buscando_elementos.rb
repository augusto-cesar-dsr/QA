Quando("acesso a url de botoes") do
  visit '/buscaelementos/botoes'
end

Entao("verifico se encontrei os elementos") do
  # all busca todos os elementos que contenham o all
  page.all(:css, '.btn')
  # sleep(5)

  # busca um elemento mapeado
  find('#teste')
  # sleep(5)
  
  #busca pelo id
  find_by_id('teste')
  # sleep(5)
  
  #busca por um botão
  find_button(class: 'btn waves-light')
  # sleep(5)
  
  # busca pelo primeiro elemento que contenha o elemento mapeado
  first('.btn')
  # sleep(5)

  # busca por algum link
  find_link(href: 'https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA')
  # sleep(5)
end