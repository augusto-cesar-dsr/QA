class MapeandoElementoPage < SitePrism::Page
  
  set_url '/users/new'
  element :nome, '#user_name'
  element :ultimo_nome, '#user_lastname'
  
  def preencher
    nome.set 'Augusto'
    ultimo_nome.set 'cesar'
  end
end