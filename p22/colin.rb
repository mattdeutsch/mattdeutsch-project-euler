names = STDIN.read[1..-2].split("\",\"")

def quicksort(whole_list, left, right)
	if right <= left
		return
	end
	pivot = whole_list[left]
	i = left + 1
	j = right
	while (i != j)
		if whole_list[i] < pivot
			i += 1
		elsif whole_list[j] > pivot
			j -= 1
		else
			tmp = whole_list[i]
			whole_list[i] = whole_list[j]
			whole_list[j] = tmp
		end
	end
	if whole_list[i] > pivot
		j = i - 1
	end
	whole_list[left] = whole_list[j]
	whole_list[j] = pivot
	quicksort(whole_list, left, j-1)
	quicksort(whole_list, j+1, right)
end

def char_to_num(c)
	"_ABCDEFGHIJKLMNOPQRSTUVWXYZ".split("").find_index(c)
end

# x="hello my name is matthew i am a boy a young man from new york".split
quicksort(names, 0, names.length - 1)
totalsum = 0
names.each_with_index do |name, index|
	name.each_char do |c|
		totalsum += char_to_num(c) * (index + 1)
	end
end
puts totalsum