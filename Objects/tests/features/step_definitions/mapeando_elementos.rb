
Quando('preencho o formulario.') do
  @mapeando = MapeandoElementoPage.new
  @mapeando.load
  @mapeando.preencher # ou
  # sleep(5)
  # @mapeando.nome.set 'Ghost'
end