module Day03

function priority(c::Char)::Int64
	if 'a' ≤ c ≤ 'z'
		p = c - 'a' + 1
	else
		p = c - 'A' + 27
	end
	p
end

function partA(filename::AbstractString)::Int64
	prioritySum = 0
	for line in eachline(filename)
		cutIndex = length(line) ÷ 2
		for duplicateChar in Set(line[1:cutIndex]) ∩ Set(line[cutIndex + 1 : end])
			prioritySum += priority(duplicateChar)
		end
	end
	prioritySum
end

function partB(filename::AbstractString)::Int64
	prioritySum = 0
	open(filename) do io
		while !eof(io)
			for commonChar in Set(readline(io)) ∩ Set(readline(io)) ∩ Set(readline(io))
				prioritySum += priority(commonChar)
			end
		end
	end
	prioritySum
end

end
