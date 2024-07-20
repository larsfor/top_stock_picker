def stock_picker(array)
  result = 0
  hi = 0
  li = 0

  array.each_with_index do |high, h_index|
    array.each_with_index do |low, l_index|
      if (high - low) > result  && h_index > l_index
        result = high - low
        hi = h_index
        li = l_index
      end
    end
  end
  [li, hi]
end
