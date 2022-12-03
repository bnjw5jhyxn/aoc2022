include("./src/day01.jl")
include("./src/day02.jl")

import .Day01
import .Day02

solutions = Dict(
		 "1AE" => Day01.partA("input/example01.txt"),
		 "1A" => Day01.partA("input/01.txt"),
		 "1BE" => Day01.partA("input/example01.txt", 3),
		 "1B" => Day01.partA("input/01.txt", 3),
		 "2AE" => Day02.partA("input/example02.txt"),
		 "2A" => Day02.partA("input/02.txt"),
		 "2BE" => Day02.partB("input/example02.txt"),
		 "2B" => Day02.partB("input/02.txt"),
		 )

for line in eachline()
	println(get(solutions, strip(uppercase(line)), "not computed"))
end
