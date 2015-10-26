require 'rest-client'

next_search  = true

while next_search
  print "Please enter search: "
  search = gets.chomp.downcase
  result = RestClient.get 'www.google.com/search', params: {q: "#{search}"}
  puts result

  print "Do you want to continue with your search [Y/n]: "
  continue_search = gets.chomp.downcase
  next_search = false if continue_search == 'n'

end


