# Find the maximum total from top to bottom of the triangle (see 'pyramid')
# http://projecteuler.net/problem=18

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

pyramid =    [[75],
             [95,64],
            [17,47,82],
           [18,35,87,10],
          [20, 4,82,47,65],
         [19 ,1,23,75, 3,34],
        [88, 2,77,73, 7,63,67],
       [99,65, 4,28, 6,16,70,92],
      [41,41,26,56,83,40,80,70,33],
     [41,48,72,33,47,32,37,16,94,29],
    [53,71,44,65,25,43,91,52,97,51,14],
   [70,11,33,28,77,73,17,78,39,68,17,57],
  [91,71,52,38,17,14,91,43,58,50,27,29,48],
 [63,66, 4,68,89,53,67,30,73,16,69,87,40,31],
[ 4,62,98,27,23, 9,70,98,73,93,38,53,60,4,23]]

best_route = route(pyramid)
sum = best_route.inject(:+)
p best_route,sum
