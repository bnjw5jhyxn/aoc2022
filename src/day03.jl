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
		duplicateChar = only(Set(line[1:cutIndex]) ∩ Set(line[cutIndex + 1 : end]))
		prioritySum += priority(duplicateChar)
	end
	prioritySum
end

function partB(filename::AbstractString)::Int64
	prioritySum = 0
	open(filename) do io
		while !eof(io)
			commonChar = only(Set(readline(io)) ∩ Set(readline(io)) ∩ Set(readline(io)))
			prioritySum += priority(commonChar)
		end
	end
	prioritySum
end

end
