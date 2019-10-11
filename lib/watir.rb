require 'watir'
browser = Watir::Browser.new(:firefox)
browser.goto 'google.com'
search_bar = browser.text_field(class: 'gsfi')
search_bar.set("Hello World!")
binding.pry 

#méthode de la barre d'entrée
#search_bar.send_keys(:enter)

#méthode du clic
submit_button = browser.button(type:"submit")
submit_button.click
binding.pry 

search_result_divs = browser.divs(class:"rc")
search_result_divs.each { |div| p div.h3.text }
binding.pry 

puts "Méfait accompli, fermeture du browser"
#browser.close
