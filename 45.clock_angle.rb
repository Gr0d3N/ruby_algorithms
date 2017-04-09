# Question: Write a function to find the smaller angle between the hour and minute hand on an analog clock.

def angle(hour, minute)
  h = (hour*60 + minute) * 0.5
  m = minute * 6

  angle = (h-m).abs
  return min(angle, 360-angle)
end

def min(a, b)
  if a <= b
    return a
  else
    return b
  end
end
