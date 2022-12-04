module Day04

function parseFile(filename::AbstractString)
	(let
		 (l1, h1, l2, h2) = match(r"^(\d+)-(\d+),(\d+)-(\d+)$", line)
		 parse(Int64, l1), parse(Int64, h1), parse(Int64, l2), parse(Int64, h2)
	 end
	 for line in eachline(filename))
end

function partA(filename::AbstractString)::Int64
	numRedundant = 0
	for (l1, h1, l2, h2) in parseFile(filename)
		if (l2 ≤ l1 && h1 ≤ h2) || (l1 ≤ l2 && h2 ≤ h1)
			numRedundant += 1
		end
	end
	numRedundant
end

function partB(filename::AbstractString)::Int64
	numRedundant = 0
	for (l1, h1, l2, h2) in parseFile(filename)
		if !(h1 < l2 || h2 < l1)
			numRedundant += 1
		end
	end
	numRedundant
end

end
