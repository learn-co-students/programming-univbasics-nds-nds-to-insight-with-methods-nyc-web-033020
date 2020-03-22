$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
pp 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)

gross_total = 0
director_data = nds[director_index][movie_index].length
inner_index = 0
while inner_index < director_data do
  gross_total += nds[director_index][movie_index][:worldwide_gross]
  inner_index += 1
  end
gross_total
end


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
puts nds
directors_index = 0
totals = {}

while directors_index < nds.length do
   director_name = nds[directors_index][:name]
   totals[director_name] = 0

   movie_index = 0

   while movie_index < nds.length do
  totals[director_name] += gross_total
  movie_index += 1
  end
  directors_index += 1
 end

 directors_totals
end

  # grand_total = 0
  # row_index = 0
  # while row_index < vm.length do
  #   column_index = 0
  #   while column_index < vm[row_index].length do
  #     grand_total += total_value_of_spinner(vm, row_index, column_index)
  #     column_index += 1
  #   end
  #   row_index += 1
  # end
