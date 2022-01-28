def nearest_power_of_2(n)

  (1..n).each do |base|
    
    power = base**2
    next if power < n/2

    next_power = power*2
        
    low_diff = n - power
    high_diff = next_power - n

    return power if low_diff < high_diff
    return next_power if high_diff < low_diff
  end

end
