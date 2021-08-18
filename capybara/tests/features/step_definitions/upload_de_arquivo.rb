Quando('eu faco um upload de arquivo') do
  visit '/outros/uploaddearquivos'
  # find('#upload')
  # attach_file('upload', '/home/augusto/Imagens/Wallpaper.jpg', make_visible: true)
  # @foto = File.join(Dir.pwd, '')
  @foto = File.join('/home/augusto/Imagens/', 'Wallpaper.jpg')
  attach_file('upload', @foto, make_visible: true)
  sleep(7)
end