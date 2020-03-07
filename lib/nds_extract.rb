$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = [ ]
  count = 0
  dir_data = director_data[:movies]
  while count < dir_data.size do
    x = dir_data[count][:worldwide_gross]
    total << x
    count += 1
  end
    return total.sum
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = { }
  count = 0
  while count < nds.size do
    dir_name = nds[count][:name]
    dir_movies = nds[count]
  result[dir_name] = gross_for_director(dir_movies)
  count += 1
end
  return result
end
