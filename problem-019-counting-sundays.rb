def first_sundays(first,last)
  days_per_month = [31,28,31,30,31,30,31,31,30,31,30,31]
  month = 0
  day = 0
  weekday = 2         # 1 Jan 1901 was a Tuesday
  total = 0           # First-of-the-Month Sunday counter
  for year in first..last
    days_per_month[1] = (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) ? 29 : 28
    for month in 0..11
      for day in 0...days_per_month[month]
        total += 1 if (weekday == 0 && day == 0)
        weekday == 6 ? weekday = 0 : weekday += 1
      end
    end
  end
  total
end

first_year = 1901
last_year = 2000

puts "First-of-the-Month Sundays from Jan. 1, #{first_year} through Dec. 31, #{last_year}:"
puts "#{first_sundays(first_year,last_year)}"
