# Find the maximum total from top to bottom of the triangle (see 'pyramid')
# http://projecteuler.net/problem=67

require_relative 'project-euler-67-pyramid'

def route(pyramid)
  best_route = []                     # best route (built at end)
  totals_pyramid = [[[75]]]           # contains sums of best paths to each location (isomorphic to 'pyramid')
  for x in 1...pyramid.length do
    totals_row = []                                       # next row of totals_pyramid
    pyramid[x].each_with_index do |num,index|             # loops through pyramid
      if index == 0
        total = num + totals_pyramid[x-1][index][0]       # path total for this location
        totals_row << [total,0]                           # pushes total to totals_row, along with pointer to parent
      elsif index == pyramid[x].length - 1
        total = num + totals_pyramid[x-1][index-1][0]
        totals_row << [total,1]
      else                                                # if not left- or rightmost value in row
        total = []
        total << num + totals_pyramid[x-1][index-1][0]    # path total from left
        total << num + totals_pyramid[x-1][index][0]      # path total from right
        larger = [[total[0],1],[total[1],0]].sort.pop     # chooses larger of the two options...
        totals_row << larger                              # ...and pushes it to totals_row
      end
    end
    totals_pyramid << totals_row                          # pushes totals_row into totals_pyramid
  end
  x = pyramid.length - 1
  while x >= 0 do                                         # builds best_route array
    if x == pyramid.length - 1
      index = totals_pyramid[x].each_with_index.max[1]    # stores index of greatest value of final row
      pointer = totals_pyramid[x][index][1]               # stores pointer to parent
      best_route << pyramid[x][index]                     # pushes value to best_route
    else
      index -= pointer                                    # new index from pointer
      pointer = totals_pyramid[x][index][1]               # new pointer
      best_route << pyramid[x][index]                     # pushes value to best_route
    end
    x -= 1
  end
  best_route.reverse                                      # returns top to bottom path
end

best_route = route(PYRAMID)
sum = best_route.inject(:+)
p best_route,sum
