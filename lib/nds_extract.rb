$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  new_hash = {}
  i = 0
  
 while i < nds.length
  x = 0
  director_name = nds[i][:name]  
  new_hash[director_name] = 0
  while x < nds.length
    new_hash << nds[i][:movies][x][worldwide_gross]
    x += 1
  end
  i += 1
end

puts new_hash
end
