# Question: Write a function to find the difference in days between two valid dates.

def date_difference(day1, month1, year1, day2, month2, year2)

  days_in_month = { 1 => 31,2 => 28,3 => 31,4 => 30,5 => 31,6 => 30,7 => 31,8 => 31,9 => 30,10 => 31,11 => 30,12 => 31}
  
  days_1 = day1 + year1 * 356
  days_2 = day2 + year2 * 356

  (1..month1-1).each do |m|
    days_1 += days_in_month[m]
  end

  (1..month2-1).each do |m|
    days_2 += days_in_month[m]
  end

  if month1 > 2
    days_1 += year1/4 - year1/100 + year1/400
  else
    days_1 += (year1-1)/4 - (year1-1)/100 + (year1-1)/400
  end

  if month2 > 2
    days_2 += year2/4 - year2/100 + year2/400
  else
    days_2 += (year2-1)/4 - (year2-1)/100 + (year2-1)/400
  end

  return (days_1 - days_2).abs
end
