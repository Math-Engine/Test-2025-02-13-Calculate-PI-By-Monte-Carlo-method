number_of_point = parse(Int, ARGS[1])

global not_inside_circle = 0

for i in 1:number_of_point
  global not_inside_circle
  if ( (2*rand() - 1)^2 ) + ( (2*rand() - 1)^2 ) > 1
    not_inside_circle = not_inside_circle + 1
  end
end

inside_circle = number_of_point - not_inside_circle

println("number_of_point : $number_of_point")
println("inside_circle : $inside_circle")
println("not_inside_circle : $not_inside_circle")

print("==========================================================================================")

print((inside_circle * 4) / number_of_point)
