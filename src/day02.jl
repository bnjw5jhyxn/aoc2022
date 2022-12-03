module Day02

function partA(filename::AbstractString)
	score = 0
	for line in eachline(filename)
		if line == "A Y" || line == "B Z" || line == "C X"
			# win
			score += 6
		elseif line == "A X" || line == "B Y" || line == "C Z"
			# draw
			score += 3
		end

		score += Int(line[3]) - Int('X') + 1
	end
	score
end

function partB(filename::AbstractString)
	score = 0
	for line in eachline(filename)
		if line[3] == 'Z'
			score += 6
		elseif line[3] == 'Y'
			score += 3
		end

		if line == "A Y" || line == "B X" || line == "C Z"
			score += 1
		elseif line == "A Z" || line == "B Y" || line == "C X"
			score += 2
		else
			score += 3
		end
	end
	score
end

end
