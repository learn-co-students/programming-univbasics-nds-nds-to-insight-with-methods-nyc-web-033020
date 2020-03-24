$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  gross_total = 0
  i = 0
  while i < director_data[:movies].length do
    gross_total += director_data[:movies][i][:worldwide_gross]
    i += 1
  end
  return gross_total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  i = 0
  while i < directors_database.length do
    director = directors_database[i]
    result[director[:name]] = gross_for_director(director)
    i += 1
  end
  result
end


#def directors_totals(nds)
  #result = {}
  #i = 0
  #while i < nds.length do
    #director = nds[i][:name]
    #  j = 0
      #result[director] = 0
      #while j < nds[i][:movies].length do
      #  result[director] += nds[i][:movies][j][:worldwide_gross]
      #  j += 1
    #  end
    #  i += 1
  #end
  #result
#end
