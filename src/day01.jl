module Day01

function partA(filename::AbstractString, k::Int64 = 1)::Int64
	s = 0
	topSums = zeros(k)
	for line in eachline(filename)
		if line == ""
			for i = 1:k
				(s, topSums[i]) = minmax(s, topSums[i])
			end
			s = 0
		else
			s += parse(Int64, line)
		end
	end
	for i = 1:k
		(s, topSums[i]) = minmax(s, topSums[i])
	end
	sum(topSums)
end

end
