Quando('seleciono o mouse hover') do
  visit '/iteracoes/mousehover'
  # sleep(2)
  find('.activator').hover
  # sleep(2)
  # visit '/'
  # visit '/iteracoes/mousehover'
  # find('.activator').hover.click
end