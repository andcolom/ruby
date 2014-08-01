#fonte http://guru-sp.github.io/tutorial_ruby/ler-escrever-arquivos.html

File.open('caelum.txt') do |f1|
  line = f1.readlines
  puts line
end
