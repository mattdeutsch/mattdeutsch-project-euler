class MyDate
	attr_reader :year, :month, :day, :weekday

	def initialize(year, month, day, weekday)
		@year = year
		@month = month
		@day = day
		@weekday = weekday
	end

	def next
		@weekday = (@weekday + 1) % 7
		# update day: need to know the month
		if @month == 2
			if @day == 29
				@month = 3
				@day = 1
			elsif @day == 28
				# is it a leap year?
				if (@year % 4 == 0 && @year % 400 != 0)
					@day += 1
				else
					@day = 1
					@month = 3
				end
			else
				@day += 1
			end
		elsif [4, 6, 9, 11].include? @month
			if @day == 30
				@day = 1
				@month += 1
			else
				@day += 1
			end
		else
			if @day == 31
				@day = 1
				if @month == 12
					@month = 1
					@year += 1
				else
					@month += 1
				end
			else
				@day += 1
			end
		end
	end
end

start = MyDate.new(1900, 1, 1, 0)
while(start.year < 1901) do
	start.next
end

tally = 0
while (start.year < 2001) do
	if start.day == 1 && start.weekday == 0
		puts "#{start.year}, #{start.month}, #{start.day}, #{start.weekday}"
		tally += 1
	end
	start.next
end

puts tally