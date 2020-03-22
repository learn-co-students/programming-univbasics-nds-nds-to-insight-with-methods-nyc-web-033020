$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)

gross_total = 0
index = 0

while index < director_data[:movies].length do
    gross_total += director_data[:movies][index][:worldwide_gross]
    index += 1
  end
gross_total
end


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)

index = 0
result = {}

while index < nds.length do
   director = nds[index][:name]
   movies = nds[index]
   result[director] = gross_for_director(movies)
   index += 1;
 end
 result
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
