number_of_point = parse(Int, ARGS[1])

not_inside_circle = 0

for i in 1:number_of_point
    x = 2*rand() - 1
    y = 2*rand() - 1
    if (x^2 + y^2) > 1
        not_inside_circle = not_inside_circle + 1
    end
end

inside_circle = number_of_point - not_inside_circle

println("number_of_point : $number_of_point")
println("inside_circle : $inside_circle")
println("not_inside_circle : $not_inside_circle")

println("==========================================================================================")

println((inside_circle * 4) / number_of_point)
