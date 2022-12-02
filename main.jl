include("./src/day01.jl")

import .Day01

solutions = Dict(
		 "1AE" => Day01.partA("input/example01.txt"),
		 "1A" => Day01.partA("input/01.txt"),
		 "1BE" => Day01.partA("input/example01.txt", 3),
		 "1B" => Day01.partA("input/01.txt", 3),
		 )

for line in eachline()
	println(get(solutions, uppercase(line), "not computed"))
end
