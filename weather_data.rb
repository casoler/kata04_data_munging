class WeatherData

  # a new class









end


# weather = WeatherData.new
# weather.open_file

temperature_day = 0
temperature_difference = 1000

File.readlines('weather.dat').each do |line|
  weather_line = line.split(' ')
  unless weather_line[0].nil?
    if weather_line[0].to_i.to_s == weather_line[0]
      day =  weather_line[0].to_i
      maximum =  weather_line[1].to_i
      minimum =  weather_line[2].to_i

      if maximum - minimum < temperature_difference
        temperature_difference = maximum - minimum
        temperature_day = day
      end
    end
  end
end

puts temperature_day


