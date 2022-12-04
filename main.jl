include("./src/day01.jl")
include("./src/day02.jl")
include("./src/day03.jl")
include("./src/day04.jl")

import .Day01
import .Day02
import .Day03
import .Day04

solutions = Dict(
		 #"1A" => Day01.partA("input/01.txt"),
		 #"1B" => Day01.partA("input/01.txt", 3),
		 #"2A" => Day02.partA("input/02.txt"),
		 #"2B" => Day02.partB("input/02.txt"),
		 #"3A" => Day03.partA("input/03.txt"),
		 #"3B" => Day03.partB("input/03.txt"),
		 #"4A" => Day04.partA("input/04.txt"),
		 #"4B" => Day04.partB("input/04.txt"),
		 "1AE" => Day01.partA("input/example01.txt"),
		 "1BE" => Day01.partA("input/example01.txt", 3),
		 "2AE" => Day02.partA("input/example02.txt"),
		 "2BE" => Day02.partB("input/example02.txt"),
		 "3AE" => Day03.partA("input/example03.txt"),
		 "3BE" => Day03.partB("input/example03.txt"),
		 "4AE" => Day04.partA("input/example04.txt"),
		 "4BE" => Day04.partB("input/example04.txt"),
		 )

for line in eachline()
	println(get(solutions, strip(uppercase(line)), "not computed"))
end
