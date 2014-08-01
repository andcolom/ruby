print "Digite algo: "
texto = gets
File.open("caelum.txt", "w") do |f|
  f << texto  
end
