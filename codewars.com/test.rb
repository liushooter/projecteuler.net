def scoreThrows(radiuses)
  source = 0

  radiuses.each do |value|
    sou = if value > 10
      0
    elsif value >=5 && value <= 10
      5
    elsif value < 5
     10
    end

    source += sou
  end

  source = 100 if source == 30

  puts source
end



puts scoreThrows([1, 5, 11])